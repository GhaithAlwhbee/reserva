import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reserva/Core/Assets/app_icons.dart';
import 'package:reserva/Core/Global%20Widgets/custom_elevated_button.dart';
import 'package:reserva/Core/Global%20Widgets/custom_text_field.dart';
import 'package:reserva/Core/Theme%20&%20Constants/Colors.dart';

import '../../../Core/Assets/app_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(Images.logo),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorsManager.kHintColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CustomTextField(
                      prefix: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset(
                          AppIcons.person,
                        ),
                      ),
                      controller: userNameControler,
                      // textAlign: TextAlign.end,
                      hintText: 'Phone number or username',
                      phone: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'can not be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      maxLines: 1,
                      passwordBool: _isObscure,
                      prefix: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset(
                          AppIcons.lock,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            AppIcons.eye,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      controller: passwordControler,
                      // textAlign: TextAlign.end,
                      hintText: 'Password',
                      phone: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'can not be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(color: ColorsManager.kPrimaryColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CustomElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.pushReplacement('/dashboard_screen');
                            }
                          },
                          text: 'Sign in',
                          fontSize: 14,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Divider(
                        color: ColorsManager.kGreyColorDark,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Or click to  login with finger print or face id',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset(Images.fingerPrint),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "Create a new account",
                          style: TextStyle(
                              fontSize: 12, color: ColorsManager.kPrimaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: CustomElevatedButton(
              onPressed: () {
                context.pushReplacement('/dashboard_screen');
              },
              text: 'Continuing as a visitor',
              fontSize: 14,
            )),
      ],
    ));
  }
}
