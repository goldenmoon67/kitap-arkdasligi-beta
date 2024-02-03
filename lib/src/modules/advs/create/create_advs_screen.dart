import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/modules/advs/create/bloc/create_advs_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/book/detail/book_detail_screen.dart';
import 'package:kitap_arkadasligi/src/modules/commons/comment/comment_screen.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class CreateAdvsScreen extends StatefulWidget {
  const CreateAdvsScreen({super.key});

  @override
  CreateAdvsScreenState createState() => CreateAdvsScreenState();
}

class CreateAdvsScreenState extends State<CreateAdvsScreen>
    with TickerProviderStateMixin {
  late TabController controller;
  BookDetailPopType? bookDetailPopType;
  BookUserProfile? popBook;
  BookUserProfile? _selectedBook;
  TextEditingController _textEditingController = TextEditingController();
  List<BookUserProfile>? books = [];

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
      create: (context) => CreateAdvsBloc()..add(CreateAdvsStartEvent()),
      child: BlocConsumer<CreateAdvsBloc, CreateAdvsState>(
        listener: (context, state) {
          if (state is CreatedAdvsSuccesfully) {
            AutoRouter.of(context).setRoot(const DashboardRoute());
            AutoRouter.of(context).push(AdvsDetailRoute(advsId: state.advsId));
          }
          if (state is CreateAdvsStartData) {
            books = [...state.booksFeature.docs];
          }
        },
        builder: (context, state) {
          if (state is CreateAdvsStartData) {
            return Scaffold(
              backgroundColor: context.scaffoldBackgroundColor,
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: Column(
                  children: <Widget>[
                    T10TopBar("İlan Oluştur"),
                    SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Kitap",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0), // İç boşluk
                              decoration: BoxDecoration(
                                color: Colors.grey[300], // Arka plan rengi
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<BookUserProfile>(
                                  value: _selectedBook,
                                  hint:
                                      const Text("İlan için bir kitap seçiniz"),
                                  items: books!.map((BookUserProfile item) {
                                    return DropdownMenuItem<BookUserProfile>(
                                      value: item,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 50,
                                            width: 50,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              clipBehavior: Clip.hardEdge,
                                              child: CachedNetworkImage(
                                                imageUrl: item.imageUrl ??
                                                    "https://picsum.photos/50/50",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Flexible(
                                            child: Text(
                                              item.name,
                                              overflow: TextOverflow.fade,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (BookUserProfile? newValue) {
                                    setState(() {
                                      _selectedBook = newValue;
                                    });
                                  },
                                  isExpanded: true,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Açıklama Mesajınız",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextField(
                              controller: _textEditingController,
                              maxLines: 14,
                              decoration: InputDecoration(
                                hintText: "Mesajınızı buraya yazınız",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.grey[300],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<CreateAdvsBloc>(context).add(
                                      CreateAdvsActionEvent(
                                          book: _selectedBook!,
                                          description:
                                              _textEditingController.text));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text(
                                  "Yayınla",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
