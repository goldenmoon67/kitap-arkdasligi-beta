import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class TempScreen2 extends StatefulWidget {
  const TempScreen2({super.key});

  @override
  State<TempScreen2> createState() => _TempScreen2State();
}

class _TempScreen2State extends State<TempScreen2> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  bool isIconTrue = false;
  bool isChecked = false;

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();

  final _formKey = GlobalKey<FormState>();
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
                "Dashboard 222",
                style: TextStyle(fontSize: 60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
