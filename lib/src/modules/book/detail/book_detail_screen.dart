import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/modules/book/detail/bloc/book_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

@RoutePage()
class BookDetailScreen extends StatefulWidget {
  final String bookId;

  const BookDetailScreen({super.key, required this.bookId});

  @override
  BookDetailScreenState createState() => BookDetailScreenState();
}

class BookDetailScreenState extends State<BookDetailScreen>
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
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: text(txt: value, color: Colors.black),
      );
    }

    Widget mInfo(List<String?> categories) {
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
      create: (context) => BookBloc(widget.bookId)..add(BookStartEvent()),
      child: BlocConsumer<BookBloc, BookState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is BookDetailData) {
            return Scaffold(
              backgroundColor: context.scaffoldBackgroundColor,
              body: SafeArea(
                child: Column(
                  children: <Widget>[
                    T10TopBar("Kitap Detay"),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 200,
                                        width: 150,
                                        child: ClipRRect(
                                          clipBehavior: Clip.antiAlias,
                                          child: CachedNetworkImage(
                                            imageUrl: state.book.imageUrl ??
                                                "https://picsum.photos/200/300",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 2),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.book.name,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                overflow: TextOverflow.fade,
                                              ),
                                            )
                                            /*  text(
                                              txt: state.book.name,
                                              color: Colors.black,
                                              size: 20,
                                              textAlign: TextAlign.start,
                                            ), */
                                            ,
                                            text(
                                              txt: state.book.description ?? "",
                                              color: Colors.grey.shade700,
                                              size: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
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
                                                    imageUrl: state.book.author
                                                            .imageUrl ??
                                                        "https://picsum.photos/50/50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              text(
                                                txt: state.book.author.name,
                                                color: Colors.grey.shade700,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AddBookMark(isSelected: true),
                                      ),
                                    ],
                                  ),
                                  mInfo(state.book.categories!)
                                ],
                              ),
                            ),
                            TabBar(
                              controller: controller,
                              unselectedLabelColor: Colors.blue,
                              indicatorColor: Colors.blueAccent,
                              labelColor: Colors.blue,
                              tabs: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child:
                                      text(txt: "Yorumlar", color: Colors.grey),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: text(
                                      txt: "Okuyanlar", color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: TabBarView(
                                children: [Text("data"), Text("545")],
                                controller: controller,
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

class AddBookMark extends StatefulWidget {
  final bool isSelected;
  const AddBookMark({super.key, required this.isSelected});

  @override
  State<AddBookMark> createState() => _AddBookMarkState();
}

class _AddBookMarkState extends State<AddBookMark> {
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
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

// ignore: must_be_immutable
class T10TopBar extends StatefulWidget {
  var titleName;
  final isDirect;

  T10TopBar(var this.titleName, {this.isDirect = false});

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
              icon: Icon(Icons.arrow_back),
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
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
