import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class RegisterMailScreen extends StatefulWidget {
  const RegisterMailScreen({super.key});

  @override
  State<RegisterMailScreen> createState() => _RegisterMailScreenState();
}

class _RegisterMailScreenState extends State<RegisterMailScreen> {
  TextEditingController? _emailController;

  bool isIconTrue = false;
  bool isChecked = false;

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Email isteği"),
          iconTheme: IconThemeData(color: context.primaryColor, size: 24),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: boxDecoration(
                    bgColor: context.cardColor, showShadow: true, radius: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      16.height,
                      Container(
                        margin: const EdgeInsets.all(24.0),
                        child: TextFormField(
                          focusNode: f1,
                          onFieldSubmitted: (v) {
                            f1.unfocus();
                            FocusScope.of(context).requestFocus(f2);
                          },
                          validator: (k) {
                            if (!k!.contains('@')) {
                              return 'Lütfen geçerli bir email giriniz';
                            }
                            return null;
                          },
                          controller: _emailController,
                          decoration: inputDecoration(context,
                              prefixIcon: Icons.mail_rounded,
                              hintText: "Email"),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            /*   Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen())); */
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          alignment: Alignment.center,
                          decoration: boxDecorationWithRoundedCorners(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(45)),
                            backgroundColor:
                                appStore.isDarkModeOn ? cardDarkColor : black,
                          ),
                          child: Text('Email ile kaydol',
                              style: boldTextStyle(color: white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
