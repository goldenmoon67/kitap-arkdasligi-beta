import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/modules/advs/detail/bloc/advs_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class AdvsDetailScreen extends StatefulWidget {
  final String advsId;

  const AdvsDetailScreen({super.key, required this.advsId});

  @override
  AdvsDetailScreenState createState() => AdvsDetailScreenState();
}

class AdvsDetailScreenState extends State<AdvsDetailScreen>
    with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
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

    return BlocProvider(
      create: (context) => AdvsBloc(widget.advsId)..add(AdvsStartEvent()),
      child: BlocConsumer<AdvsBloc, AdvsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is AdvsDetailData) {
            return Scaffold(
              backgroundColor: context.scaffoldBackgroundColor,
              body: SafeArea(
                child: Column(
                  children: <Widget>[
                    T10TopBar(""),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: SizedBox(
                                      height: 200,
                                      width: double.infinity,
                                      child: ClipRRect(
                                        clipBehavior: Clip.antiAlias,
                                        child: CachedNetworkImage(
                                          imageUrl: state
                                                  .advs.bookDetails.imageUrl ??
                                              "https://picsum.photos/200/300",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    state.advs.title,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                  text(
                                    txt: state.advs.description ?? "",
                                    color: Colors.grey.shade700,
                                    size: 14,
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 50,
                                                width: 50,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  clipBehavior: Clip.hardEdge,
                                                  child: CachedNetworkImage(
                                                    imageUrl: state
                                                            .advs
                                                            .ownerDetail
                                                            .imageUrl ??
                                                        "https://picsum.photos/50/50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              text(
                                                txt:
                                                    state.advs.ownerDetail.name,
                                                color: Colors.grey.shade700,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.blue,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    text(
                                                      txt: "Kitap Detayı gör",
                                                      size: 18,
                                                      color: Colors.blue,
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    const Icon(
                                                      Icons.book_rounded,
                                                      color: Colors.blue,
                                                      size: 30,
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Text(
                                                "İlan için İletişime geç",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TabBar(
                              controller: controller,
                              unselectedLabelColor: Colors.blue,
                              indicatorColor: Colors.blueAccent,
                              labelColor: Colors.blue,
                              tabs: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child:
                                      text(txt: "Yorumlar", color: Colors.grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: text(
                                      txt: "Etkileşimde bulunanlar",
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: TabBarView(
                                controller: controller,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Buradaki Yorumlar sen ve ilan sahibi arasındadır. 3. kişiler bu yorumları göremez",
                                    ),
                                  ),
                                  Text("545")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class AddAdvsMark extends StatefulWidget {
  final bool isSelected;
  const AddAdvsMark({super.key, required this.isSelected});

  @override
  State<AddAdvsMark> createState() => _AddAdvsMarkState();
}

class _AddAdvsMarkState extends State<AddAdvsMark> {
  Color? color;
  IconData? iconData;

  @override
  void initState() {
    _checkInitColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _toggle();
      },
      child: Row(
        children: [
          Icon(
            iconData,
            color: color,
            size: 36,
          ),
          text(
            txt: color == Colors.blue ? "Kitaplıkta" : "Kitaplığa Ekle",
            color: color,
            size: 16,
          ),
        ],
      ),
    );
  }

  void _checkInitColor() {
    if (widget.isSelected) {
      color = Colors.blue;
      iconData = Icons.bookmark_added_sharp;
    } else {
      color = Colors.grey;
      iconData = Icons.bookmark_add_outlined;
    }
  }

  void _toggle() {
    if (color == Colors.blue) {
      setState(() {
        color = Colors.grey;
        iconData = Icons.bookmark_add_outlined;
      });
    } else {
      setState(() {
        color = Colors.blue;
        iconData = Icons.bookmark_added_sharp;
      });
    }
  }
}

void changeStatusColor(Color color) async {
  setStatusBarColor(color);
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color? bgColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor ?? appStore.scaffoldBackground,
    boxShadow: showShadow
        ? defaultBoxShadow(shadowColor: shadowColorGlobal)
        : [const BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
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
