import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard%20copy/temp.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard%20copy/temp2.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard/bloc/dashboard_bloc.dart';
import 'package:kitap_arkadasligi/src/utils/navigation_bar/bottom_bar.dart';

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
    const TempScreen(),
    const TempScreen2(),
    const TempScreen(),
    const TempScreen2(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc(),
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        buildWhen: (previous, state) {
          return true;
        },
        builder: (context, state) {
          return Scaffold(
            body: _pages.elementAt(_selectedIndex),
            bottomNavigationBar: BubbleBottomBar(
              opacity: .2,
              currentIndex: _selectedIndex,
              elevation: 8,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              hasNotch: false,
              hasInk: true,
              inkColor: Colors.lightGreen,
              items: <BubbleBottomBarItem>[
                tab(Icons.home, "db4_home"),
                tab(Icons.access_alarm_sharp, "saşld"),
                tab(Icons.not_accessible, "noti"),
                tab(Icons.adb_sharp, "asa"),
              ],
            ),
          );
        },
      ),
    );
  }
}

BubbleBottomBarItem tab(IconData iconData, String tabName) {
  return BubbleBottomBarItem(
      backgroundColor: Colors.red,
      icon: Icon(
        iconData,
        size: 14,
        color: Colors.black,
      ),
      activeIcon: Icon(
        iconData,
        size: 20,
        color: Colors.black,
      ),
      title: Text(
        tabName,
        style: primaryTextStyle(
            size: 16, fontFamily: 'Medium', color: Colors.pink),
        maxLines: 1,
      ));
}

/* import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard%20copy/temp.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard%20copy/temp2.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  var _pages = <Widget>[
    TempScreen(),
    TempScreen2(),
    TempScreen(),
    TempScreen2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: context.cardColor,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.date_range), label: 'Statistics'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard), label: 'Wallet'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
 */

