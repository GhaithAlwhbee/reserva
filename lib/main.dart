import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reserva/Core/App%20Router/app_router.dart';
import 'package:reserva/Core/Helpers/app_bloc_observer.dart';
import 'package:reserva/Core/Theme%20&%20Constants/theme.dart';
import 'Presentation/Bloc/Auth Bloc/auth_bloc.dart';
import 'injection.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = MyBlocObserver();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<AuthBloc>()),
      ],
      child: MaterialApp.router(
        
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

