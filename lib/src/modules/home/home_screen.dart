import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/basic/advs_basic.dart';
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

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  List<BookUserProfile> books = [];
  List<AdvsBasic> advs = [];

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  getTabs(List<String> items) {
    List<Widget> tabs = [];
    for (int i = 0; i < items.length; i++) {
      tabs.add(
        Container(
          height: MediaQuery.of(context).size.height / 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
          child: Tab(
            child: Text(
              items[i],
            ),
          ),
        ),
      );
    }
    return tabs;
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
            advs = [...state.advs.docs];
          }
        },
        builder: (context, state) {
          debugPrint(books.toString());
          return Scaffold(
            body: SafeArea(
              child: DefaultTabController(
                length: 2,
                child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      const SliverAppBar(
                          automaticallyImplyLeading: false,
                          title: SizedBox(
                            height: 50,
                          )),
                      SliverPersistentHeader(
                          delegate: _SliverAppBarDelegate(
                        TabBar(
                          indicatorColor: Colors.red,
                          indicatorSize: TabBarIndicatorSize.tab,
                          padding: EdgeInsets.zero,
                          indicatorPadding: EdgeInsets.zero,
                          labelColor: Colors.white,
                          indicator: const ShapeDecoration(
                            shape: UnderlineInputBorder(),
                            color: Colors.blue,
                          ),
                          controller: tabController,
                          labelPadding: const EdgeInsets.only(
                              left: 0.0, right: 0.0, bottom: 0),
                          unselectedLabelColor: Colors.grey.shade800,
                          tabs: getTabs(["Kitaplar", "İlanlar"]),
                        ),
                      )),
                    ];
                  },
                  body: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
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
                      Container(
                        margin:
                            const EdgeInsets.only(left: 8, top: 20, right: 8),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: advs.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProfileAdvsItem(
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
                                  advs: advs[index]),
                            );
                          },
                        ),
                      ),
                    ],
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: boxDecoration(
          radius: 10,
          bgColor: appStore.isDarkModeOn ? Colors.blue : Colors.blueAccent,
          showShadow: true),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
