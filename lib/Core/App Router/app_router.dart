import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reserva/Presentation/Pages/Dashboard/dashboard_screen.dart';
import 'package:reserva/Presentation/Pages/Login/login_screen.dart';
import 'package:reserva/Presentation/Pages/Restaurants/restaurant_details_screen.dart';

import '../../Presentation/Pages/Splash/splash_screen.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            const MaterialPage(child: SplashScreen()),
      ),
      GoRoute(
        name: '/login_screen',
        path: '/login_screen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen()),
      ),
      GoRoute(
        name: '/dashboard_screen',
        path: '/dashboard_screen',
        routes: [
          GoRoute(
        name: 'restaurant_details_screen',
        path: 'restaurant_details_screen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: RestaurantDetailsScreen()),
      ),
        ],
        pageBuilder: (context, state) =>
            const MaterialPage(child: DashboardScreen()),
      ),
    ],
    errorPageBuilder: (context, state) => const MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text(
            'Check Named Route',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    ),
  );
}
