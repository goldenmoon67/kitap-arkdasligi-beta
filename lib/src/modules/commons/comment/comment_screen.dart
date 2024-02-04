import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/modules/advs/detail/advs_detail_screen.dart';
import 'package:nb_utils/nb_utils.dart';

enum CommentType {
  private,
  public,
}

enum CommentObjectType {
  book,
}

@RoutePage()
class CommentScreen extends StatefulWidget {
  final CommentType commentType;
  final String objectId;
  final void Function(String text) sendButton;
  const CommentScreen(
      {super.key,
      required this.commentType,
      required this.objectId,
      required this.sendButton});

  @override
  CommentScreenState createState() => CommentScreenState();
}

class CommentScreenState extends State<CommentScreen> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(appStore.appBarColor ?? Colors.blue);
    Widget mTag(var value) {
      return Container(
        decoration: boxDecoration(
            color: Colors.black,
            bgColor: context.scaffoldBackgroundColor,
            showShadow: true),
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: text(txt: value, color: Colors.black),
      );
    }

    Widget mInfo(List<String> categories) {
      return Container(
        margin: const EdgeInsets.all(20),
        color: context.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                for (var i = 0; i < categories.length; i++) mTag(categories[i]),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            T10TopBar(widget.commentType == CommentType.private
                ? "Kullanıcıya mesajınız"
                : "Yorum ekleyin"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: controller,
                maxLines: 14,
                decoration: InputDecoration(
                  hintText: widget.commentType == CommentType.private
                      ? "Mesajınızı buraya yazınız"
                      : "Yorumunuzu buraya yazınız", // Hint text
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Oval şekil
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[300], // Arka plan rengi
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            widget.sendButton(controller.text);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Buton rengi
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20), // Butonun kenar yuvarlaklığı
            ),
          ),
          child: const Text(
            "Gönder",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class T10TopBar extends StatefulWidget {
  var titleName;
  final isDirect;

  T10TopBar(var this.titleName, {super.key, this.isDirect = false});

  @override
  State<StatefulWidget> createState() {
    return T10TopBarState(isDirect: isDirect);
  }
}

class T10TopBarState extends State<T10TopBar> {
  final isDirect;

  T10TopBarState({this.isDirect = false});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: appStore.appBarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: appStore.iconColor,
              onPressed: () {
                if (isDirect) {
                  /*   ProKitLauncher().launch(context,
                      isNewTask: true,
                      pageRouteAnimation: PageRouteAnimation.Fade); */
                } else {
                  finish(context);
                }
              },
            ),
            Center(
              child: text(
                txt: widget.titleName,
                color: appStore.textPrimaryColor,
                fontWeight: FontWeight.bold,
                size: 16,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
