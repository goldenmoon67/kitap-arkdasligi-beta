import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class TempScreen extends StatefulWidget {
  const TempScreen({super.key});

  @override
  State<TempScreen> createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
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
                "Dashboard asdsadsa",
                style: TextStyle(fontSize: 60),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
