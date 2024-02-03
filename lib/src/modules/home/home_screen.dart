import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/modules/home/bloc/home_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/profile/profile_screen.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  List<BookUserProfile> books = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(StartEvent()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeInitial) {
            EasyLoading.show();
          } else {
            EasyLoading.dismiss(animation: false);
          }
          if (state is HomeStartData) {
            books = [...state.books.docs];
          }
        },
        builder: (context, state) {
          debugPrint(books.toString());
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: boxDecoration(
                        bgColor: context.cardColor,
                        showShadow: true,
                        radius: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: GridView.builder(
                        itemCount: books.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 50.0,
                                mainAxisExtent: 250),
                        itemBuilder: (context, index) {
                          return ProfileBookItem(
                            readBook: (book) {
                              setState(() {
                                books.add(book);
                              });
                            },
                            removeBook: (book) {
                              setState(() {
                                books.removeWhere(
                                    (element) => element.id == book.id);
                              });
                            },
                            book: books[index],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
