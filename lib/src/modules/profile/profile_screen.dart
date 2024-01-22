import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/data/model/advs/basic/advs_basic.dart';
import 'package:kitap_arkadasligi/src/data/model/book/user_profile/book_user_profile.dart';
import 'package:kitap_arkadasligi/src/data/model/comments.dart/comments_basic.dart';
import 'package:kitap_arkadasligi/src/data/model/profile/user.dart';
import 'package:kitap_arkadasligi/src/modules/profile/bloc/profile_bloc.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  static var tag = "/profile_three";

  final bool isDirect;
  const ProfileScreen({super.key, this.isDirect = false});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  User? user;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = context.height();

    return BlocProvider(
      create: (context) => ProfileBloc()..add(StartEvent()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is ProfileLoading) {
            EasyLoading.show();
          } else {
            EasyLoading.dismiss(animation: false);
          }
          if (state is ProfileStartData) {
            user = state.user;
          }
        },
        builder: (context, state) {
          if (state is ProfileStartData) {
            return Scaffold(
              body: DefaultTabController(
                length: 3,
                child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        expandedHeight: 350,
                        floating: false,
                        pinned: true,
                        titleSpacing: 0,
                        backgroundColor: innerBoxIsScrolled
                            ? Colors.blue.shade200
                            : Colors.white,
                        actionsIconTheme: const IconThemeData(opacity: 0.0),
                        leading: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: white,
                            ),
                            onPressed: () {
                              if (widget.isDirect) {
                                /*    ProKitLauncher().launch(context,
                                      isNewTask: true,
                                      pageRouteAnimation: PageRouteAnimation.Fade); */
                              } else {
                                finish(context);
                              }
                            }),
                        title: SizedBox(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Profile",
                                  maxLines: 2,
                                  style: boldTextStyle(
                                      size: 22, color: Colors.white))
                            ],
                          ),
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                            color: context.scaffoldBackgroundColor,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: context.height() * 0.22,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: <Color>[
                                      Colors.blue.shade200,
                                      Colors.blueAccent,
                                    ]),
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0)),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: (h * 0.12)),
                                      child: Column(
                                        children: <Widget>[
                                          CircleAvatar(
                                              backgroundImage:
                                                  CachedNetworkImageProvider(
                                                      user?.imageUrl ?? ""),
                                              radius: h * 0.08),
                                          const SizedBox(height: 8),
                                          Text(user!.nickName,
                                              style: boldTextStyle(size: 20)),
                                          Text(user!.email,
                                              style:
                                                  primaryTextStyle(size: 16)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SliverPersistentHeader(
                        delegate: _SliverAppBarDelegate(
                          TabBar(
                            labelColor: Colors.white,
                            indicatorColor: Colors.white,
                            unselectedLabelColor: appStore.textPrimaryColor,
                            tabs: const [
                              Tab(text: "Kitaplık"),
                              Tab(text: "İlanlar"),
                              Tab(text: "Yorumlar"),
                            ],
                          ),
                        ),
                        pinned: true,
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: GridView.builder(
                          itemCount: state.user.books.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 50.0,
                                  mainAxisExtent: 250),
                          itemBuilder: (context, index) {
                            return ProfileBookItem(
                              book: state.user.books[index],
                            );
                          },
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 8, top: 20, right: 8),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: state.user.advertisements.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProfileAdvsItem(
                                  advs: state.user.advertisements[index]),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 8, top: 20, right: 8),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: state.user.advertisements.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProfileCommentItem(
                                  comment: state.user.comments[index]),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
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

class ProfileAdvsItem extends StatelessWidget {
  final AdvsBasic advs;
  const ProfileAdvsItem({super.key, required this.advs});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: boxDecoration(
        radius: 10,
        showShadow: true,
        bgColor: Colors.blue.shade100,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        advs.bookImageUrl ?? "https://picsum.photos/200/300",
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 16, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            advs.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.fade,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(advs.title,
                    style: primaryTextStyle(
                      size: 20,
                      weight: FontWeight.bold,
                      color: Colors.blue,
                    )),
                Text(advs.description, style: primaryTextStyle(size: 14)),
              ],
            ).paddingOnly(left: 16, right: 16),
          ),
        ],
      ),
    );
  }
}

class ProfileBookItem extends StatelessWidget {
  final BookUserProfile book;
  const ProfileBookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CachedNetworkImage(
              imageUrl: book.imageUrl ?? "https://picsum.photos/200/300",
              fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Icon(Icons.person),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    book.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                AutoRouter.of(context).push(BookDetailRoute(bookId: book.id));
              },
            ),
          )
        ],
      ),
    );
  }
}

class ProfileCommentItem extends StatelessWidget {
  final CommentBasic comment;
  const ProfileCommentItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: boxDecoration(
        radius: 10,
        showShadow: true,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          clipBehavior: Clip.hardEdge,
                          child: CachedNetworkImage(
                            imageUrl: comment.relatedBook.imageUrl ??
                                "https://picsum.photos/50/50",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      text(
                        txt: comment.relatedBook.name,
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
            child: Text(comment.text),
          )
        ],
      ),
    );
  }
}
