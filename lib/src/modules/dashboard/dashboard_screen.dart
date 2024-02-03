import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/home/home_screen.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard/bloc/dashboard_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/profile/profile_screen.dart';
import 'package:kitap_arkadasligi/src/utils/navigation_bar/bottom_bar.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final _pages = <Widget>[
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc(),
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: _pages.elementAt(_selectedIndex),
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  AutoRouter.of(context).push(const CreateAdvsRoute());
                },
                backgroundColor: Colors.blueAccent,
                child: const Icon(Icons.add),
              ),
            ),
            bottomNavigationBar: BubbleBottomBar(
              opacity: .4,
              currentIndex: _selectedIndex,
              elevation: 4,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              hasNotch: false, // Notch varsa FAB için yer aç
              hasInk: true,
              inkColor: Colors.blueAccent,
              items: <BubbleBottomBarItem>[
                tab(Icons.home, "Anasayfa"),
                tab(Icons.person_2_rounded, "Profil"),
              ],
            ),
          );
        },
      ),
    );
  }

  BubbleBottomBarItem tab(IconData iconData, String tabName) {
    return BubbleBottomBarItem(
      backgroundColor: Colors.blueAccent,
      icon: Icon(
        iconData,
        size: 24,
        color: Colors.grey,
      ),
      activeIcon: Icon(
        iconData,
        size: 36,
        color: Colors.blueAccent,
      ),
      title: Text(
        tabName,
        style: primaryTextStyle(
            size: 16,
            fontFamily: 'Medium',
            color: Colors.blueAccent,
            weight: FontWeight.bold),
        maxLines: 1,
      ),
    );
  }
}
