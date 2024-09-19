import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reserva/Core/Assets/app_images.dart';

import '../../Bloc/Auth Bloc/auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      context.read<AuthBloc>().add(CheckTokenEvent());
      print('checking token');
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccessState) {
            log('state success');
            context.pushReplacement("/dashboard_screen");
          } else if (state is AuthNotLoggedState) {
            context.pushReplacement("/login_screen");
          }
        },
        child: Scaffold(
          body: Center(child: SvgPicture.asset(Images.logo)),
        ));
  }
}
