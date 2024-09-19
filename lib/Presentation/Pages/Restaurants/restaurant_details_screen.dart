import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reserva/Core/Assets/app_icons.dart';
import 'package:reserva/Core/Assets/app_images.dart';
import 'package:reserva/Core/Global%20Widgets/custom_app_bar.dart';
import 'package:reserva/Core/Theme%20&%20Constants/Colors.dart';
import 'package:reserva/Core/Theme%20&%20Constants/constants.dart';
import 'package:reserva/Presentation/Pages/Restaurants/restaurant_home_screen.dart';
import 'package:reserva/Presentation/Pages/Restaurants/restaurant_menu_screen.dart';
import 'package:reserva/Presentation/Pages/Restaurants/restaurant_reviews_screen.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  State<RestaurantDetailsScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  int navBarItemSelected = 0;
  final screens = [
    const RestaurantHomeScreen(),
    const restaurantMenuScreen(),
    const restaurantReviewsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          context: context,
          title: 'Restaurant',
          backButton: true,
          searchButton: false),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              automaticallyImplyLeading: false, // Remove back button
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                // title: Text('Reserva Restaurant'),
                background: Image.asset(
                  Images.reserveResturant,
                  fit: BoxFit.cover,
                ),
                collapseMode: CollapseMode.none,
                // SvgPicture.asset(Images.reserveResturantTables),
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(110.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(Images.reservaResturantLogo),
                          Text(
                            'Reserva Restaurant',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorsManager.kBackgroundColor,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: ColorsManager.kPrimaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              NavItem(
                                text: 'Home Page',
                                icon: AppIcons.homeIcon,
                                isSelected: navBarItemSelected == 0,
                                callback: () {
                                  setState(() {
                                    navBarItemSelected = 0;
                                  });
                                },
                              ),
                              NavItem(
                                text: 'Menu',
                                icon: AppIcons.menuIcon,
                                isSelected: navBarItemSelected == 1,
                                callback: () {
                                  setState(() {
                                    navBarItemSelected = 1;
                                  });
                                },
                              ),
                              NavItem(
                                text: 'Reviews',
                                icon: AppIcons.starIcon,
                                isSelected: navBarItemSelected == 2,
                                callback: () {
                                  setState(() {
                                    navBarItemSelected = 2;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
                  SliverList(delegate: SliverChildListDelegate([
                    screens[navBarItemSelected],
                  ]))
          
          // SliverList(
          //     delegate: SliverChildBuilderDelegate((context, index) {
          //   return ListTile(
          //     title: Text('Item ${1 + index}'),
          //   );
          // }, childCount: 20))
        ],
      ),
      floatingActionButton: Container(
        height: 40.0,
        child: FittedBox(
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Reserve Now'),
            ),
            backgroundColor: ColorsManager.kSecondaryColor,
          ),
        ),
      ),
      // FloatingActionButton.extended(
      //   label: Text('Reserve Now'),
      //   onPressed: (){},
      //   ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String text;
  final String icon;
  final bool isSelected;
  final void Function() callback;

  const NavItem(
      {super.key,
      required this.text,
      required this.icon,
      required this.isSelected,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: isSelected
                ? ColorsManager.kSecondaryColorLight
                : ColorsManager.kPrimaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Column(
              children: [
                SvgPicture.asset(icon),
                Text(
                  text,
                  style: TextStyle(
                      color: ColorsManager.kBackgroundColor, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
