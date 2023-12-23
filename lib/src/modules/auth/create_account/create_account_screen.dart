import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kitap_arkadasligi/main.dart';
import 'package:kitap_arkadasligi/src/commons/colors.dart';
import 'package:kitap_arkadasligi/src/commons/images.dart';
import 'package:kitap_arkadasligi/src/commons/widgets.dart';
import 'package:kitap_arkadasligi/src/utils/route/app_router.dart';
import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: careaAppBarWidget(context),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.book,
                  size: 60,
                ),
                const SizedBox(height: 16),
                Text('Hesap Oluştur', style: boldTextStyle(size: 24)),

                const SizedBox(height: 180),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      AutoRouter.of(context)
                          .navigate(const RegisterMailRoute());
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    decoration: boxDecorationWithRoundedCorners(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      backgroundColor:
                          appStore.isDarkModeOn ? cardDarkColor : black,
                    ),
                    child: Text('Email ile kaydol',
                        style: boldTextStyle(color: white)),
                  ),
                ),
                //Divider
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(height: 0.2, color: Colors.black)),
                        const SizedBox(width: 10),
                        const Text(
                          'Şu şekil devam et',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: Container(
                                height: 0.2, color: primaryBlackColor)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
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
                              height: 24, width: 24, image: AssetImage(google)),
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
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {
                    /*   Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginWithPassScreen()),
                    ); */
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "Bir hesabın zaten var mı?",
                      style: secondaryTextStyle(),
                      children: [
                        TextSpan(text: ' Giriş Yap', style: primaryTextStyle()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
