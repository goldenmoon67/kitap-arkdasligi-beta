import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/modules/book/detail/bloc/book_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/commons/comment/comment_screen.dart';
import 'package:kitap_arkadasligi/src/modules/profile/bloc/profile_bloc.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';
import 'package:nb_utils/nb_utils.dart';

enum BookDetailPopType {
  readBook,
  removeBook,
}

@RoutePage()
class BookDetailScreen extends StatefulWidget {
  final String bookId;
  const BookDetailScreen({super.key, required this.bookId});

  @override
  BookDetailScreenState createState() => BookDetailScreenState();
}

class BookDetailScreenState extends State<BookDetailScreen>
    with TickerProviderStateMixin {
  BookDetailPopType? bookDetailPopType;
  bool? didIRead;
  late TabController controller;
  List<Widget> comments = [];
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

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookBloc(widget.bookId)..add(BookStartEvent()),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
      ],
      child: BlocConsumer<BookBloc, BookState>(
        listener: (context, state) {
          if (state is BookSucces) {
            AutoRouter.of(context).setRoot(const DashboardRoute());
            AutoRouter.of(context).push(BookDetailRoute(bookId: widget.bookId));
          }
          if (state is BookDetailData) {
            didIRead = state.book.isReadByUser;
            comments.add(
              SizedBox(
                height: 60,
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).push(
                      CommentRoute(
                        commentType: CommentType.public,
                        objectId: widget.bookId,
                        sendButton: (text) {
                          BlocProvider.of<BookBloc>(context)
                              .add(CommentBookEvent(
                            text,
                            bookId: widget.bookId,
                          ));
                        },
                      ),
                    );
                  },
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
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Yorum Ekle",
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
              ),
            );
            if (state.book.commentDetails != null &&
                state.book.commentDetails!.isNotEmpty) {
              for (var element in state.book.commentDetails!) {
                comments.add(
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: boxDecoration(
                        radius: 10,
                        showShadow: true,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
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
                                            imageUrl: element!
                                                    .ownerDetails!.imageUrl ??
                                                "https://picsum.photos/50/50",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      text(
                                        txt: element!.ownerDetails!.name,
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(element!.text),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
            }
          }
        },
        builder: (context, state) {
          if (state is BookDetailData) {
            return Scaffold(
              backgroundColor: context.scaffoldBackgroundColor,
              body: SafeArea(
                child: Column(
                  children: <Widget>[
                    SafeArea(
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
                                AutoRouter.of(context).pop({
                                  'bookDetailPopType': bookDetailPopType,
                                  'book': BookUserProfile(
                                    id: widget.bookId,
                                    name: state.book.name,
                                    imageUrl: state.book.imageUrl,
                                  )
                                });
                              },
                            ),
                            Center(
                              child: text(
                                txt: "Kitap Detay",
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
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(10),
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
                                              style: const TextStyle(
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
                                                    imageUrl: state.book.author
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
                                                txt: state.book.author.name,
                                                color: Colors.grey.shade700,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AddBookMark(
                                            read: () {
                                              BlocProvider.of<BookBloc>(context)
                                                  .add(ReadBookEvent(
                                                      bookId: widget.bookId));
                                              setState(() {
                                                bookDetailPopType =
                                                    BookDetailPopType.readBook;
                                              });
                                            },
                                            unread: () {
                                              BlocProvider.of<BookBloc>(context)
                                                  .add(RemoveReadBookEvent(
                                                      bookId: widget.bookId));
                                              setState(() {
                                                bookDetailPopType =
                                                    BookDetailPopType
                                                        .removeBook;
                                              });
                                            },
                                            isSelected: didIRead ?? false),
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
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child:
                                      text(txt: "Yorumlar", color: Colors.grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: text(
                                      txt: "Okuyanlar", color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: TabBarView(
                                controller: controller,
                                children: [
                                  Column(
                                    children: comments,
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

class AddBookMark extends StatefulWidget {
  final bool isSelected;
  final void Function() read;
  final void Function() unread;

  const AddBookMark(
      {super.key,
      required this.isSelected,
      required this.read,
      required this.unread});

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
      widget.unread();

      setState(() {
        color = Colors.grey;
        iconData = Icons.bookmark_add_outlined;
      });
    } else {
      widget.read();

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
