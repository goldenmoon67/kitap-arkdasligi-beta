import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: boxDecoration(
                  bgColor: context.cardColor, showShadow: true, radius: 10),
              child: const Text(
                "Home Screen",
                style: TextStyle(fontSize: 60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
