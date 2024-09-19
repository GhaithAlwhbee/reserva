import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reserva/Core/Assets/app_icons.dart';
import 'package:reserva/Core/Theme%20&%20Constants/Colors.dart';
import 'package:reserva/Presentation/Pages/Home/home_screen.dart';
import 'package:reserva/Presentation/Pages/Reservations/reservations_screen.dart';
import 'package:reserva/Presentation/Pages/Restaurants/restaurants_screen.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int index = 1;
  final screens = [
    const HomeScreen(),
    const RestaurantsScreen(),
    const ReservationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: ColorsManager.kSecondaryColorLight,
            iconTheme: MaterialStateProperty.all(
                IconThemeData(color: ColorsManager.kWhiteColor),
                ),
            labelTextStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorsManager.kBackgroundColor,
            ))),
        child: NavigationBar(
          height: 60,
          backgroundColor: ColorsManager.kPrimaryColor,
          // backgroundColor: Color(0xFFf1f5fb),
          // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          animationDuration: const Duration(seconds: 1),
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations:  [
            NavigationDestination(
              icon: Image.asset(AppIcons.homeNavigationIcon),
              
              label: 'Home',
            ),
            NavigationDestination(
              icon: Image.asset(AppIcons.restaurntNavigationIcon),
              label: 'Restaurants',
            ),
            NavigationDestination(
              icon: Image.asset(AppIcons.flagNavigationIcon),
              
              label: 'Reservations',
            ),
          ],
        ),
      ),
    );
  }
}
