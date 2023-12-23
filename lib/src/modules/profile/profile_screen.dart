import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitap_arkadasligi/src/commons/app_component.dart';
import 'package:kitap_arkadasligi/src/modules/profile/bloc/profile_bloc.dart';

import 'package:nb_utils/nb_utils.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc()..add(StartEvent()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: boxDecoration(
                        bgColor: context.cardColor,
                        showShadow: true,
                        radius: 10),
                    child: const Text(
                      "Profile Screen",
                      style: TextStyle(fontSize: 60),
                    ),
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
