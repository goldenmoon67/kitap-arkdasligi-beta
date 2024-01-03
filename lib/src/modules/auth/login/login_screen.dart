import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/images.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/modules/auth/login/bloc/login_bloc.dart';
import 'package:kitap_arkadasligi/src/modules/dashboard/dashboard_screen.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class LoginScreen extends StatefulWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: this,
    );
  }
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  bool isIconTrue = false;
  bool isChecked = false;

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();

  final _formKey = GlobalKey<FormState>();

  bool? checkBoxValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var userinfo = ModalRoute.of(context)!.settings.arguments;
    if (_emailController == null || _passwordController == null) {
      if (userinfo == null) {
        _emailController = TextEditingController();
        _passwordController = TextEditingController();
      } else {
        /*   userinfo as UserCreadential;
        _emailController = TextEditingController(text: userinfo.user_email);
        _passwordController =
            TextEditingController(text: userinfo.user_password); */
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSucces) {
          AutoRouter.of(context).push(const DashboardRoute());
        }
      },
      buildWhen: (previous, state) {
        return true;
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            FocusScope.of(context).unfocus();
            return true;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              elevation: 0,
              iconTheme: IconThemeData(color: context.iconColor),
              backgroundColor: context.scaffoldBackgroundColor,
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.book,
                        size: 60,
                      ),
                      Text('Giriş Yap', style: boldTextStyle(size: 24)),
                      const SizedBox(height: 20),
                      TextFormField(
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
                            prefixIcon: Icons.mail_rounded, hintText: "Email"),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: isIconTrue,
                        focusNode: f2,
                        validator: (value) {
                          return null;
                        },
                        onFieldSubmitted: (v) {
                          f2.unfocus();
                          if (_formKey.currentState!.validate()) {
                            /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen())); */
                          }
                        },
                        decoration: inputDecoration(
                          context,
                          prefixIcon: Icons.lock,
                          hintText: "Şifre",
                          suffixIcon: Theme(
                            data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent),
                            child: IconButton(
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                setState(() {
                                  isIconTrue = !isIconTrue;
                                });
                              },
                              icon: Icon(
                                (isIconTrue)
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off,
                                size: 16,
                                color: appStore.isDarkModeOn ? white : gray,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            BlocProvider.of<LoginBloc>(context).add(
                                LoginActionEvent(
                                    email: _emailController!.text,
                                    password: _passwordController!.text));
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: boxDecorationWithRoundedCorners(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(45)),
                            backgroundColor:
                                appStore.isDarkModeOn ? cardDarkColor : black,
                          ),
                          child: Text('Giriş Yap',
                              style: boldTextStyle(color: white)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          /* Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassScreen())); */
                        },
                        child:
                            Text('Şifreni mi unuttun?', style: boldTextStyle()),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 30,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                    height: 0.2, color: Colors.black26)),
                            const SizedBox(width: 10),
                            Text('Şu şekil devam et',
                                style: secondaryTextStyle()),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Container(
                                    height: 0.2, color: Colors.black26)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                await customDialoge(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                width: 65,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: context.iconColor),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Image(
                                    height: 24,
                                    width: 24,
                                    image: AssetImage(facebook)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await customDialoge(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                width: 65,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: context.iconColor),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Image(
                                    height: 24,
                                    width: 24,
                                    image: AssetImage(google)),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await customDialoge(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                width: 65,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: context.iconColor),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image(
                                    height: 24,
                                    width: 24,
                                    image: const AssetImage(apple),
                                    color: context.iconColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DashboardScreen()));
                        },
                        child: Text.rich(
                          TextSpan(
                            text: "Henüz bir hesabın yok mu?",
                            style: secondaryTextStyle(),
                            children: [
                              TextSpan(
                                  text: ' Kayıt ol!',
                                  style: boldTextStyle(size: 14)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class UserCreadential {}
