import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reserva/Core/Assets/app_icons.dart';
import 'package:reserva/Core/Assets/app_images.dart';
import 'package:reserva/Core/Global%20Widgets/custom_app_bar.dart';
import 'package:reserva/Core/Theme%20&%20Constants/Colors.dart';
import 'package:reserva/Core/Theme%20&%20Constants/constants.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  int filterIndexSelected = 0;
  final filtesList = [
    "Reservations",
    "24/7",
    "Eastern",
    "Brands",
    "Western",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          context: context,
          title: 'Restaurants',
          backButton: true,
          searchButton: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 25,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: filtesList.length,
                    itemBuilder: (context, index) {
                      return filter(
                        text: filtesList[index],
                        isSelected: index == filterIndexSelected,
                        callback: () {
                          setState(() {
                            filterIndexSelected = index;
                          });
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10.0);
                    })),
            const SizedBox(
              height: 10,
            ),
            const RestaurantCard(
              restaurantName: "McDonald's",
              restaurantType: 'Restaurant, Cafe’',
              restaurantLocation:
                  "Lusail Fox Hills, commercial street 112, Zone 69 59",
              restaurantLogo: Images.mcDonaldResturantLogo,
              food: '3.7',
              service: '4.6',
              shiaha: '3.0',
              ambiance: '4.2',
              noiseLevel: 'low',
            ),
            const RestaurantCard(
              restaurantName: "Reserva",
              restaurantType: 'Restaurant,',
              restaurantLocation:
                  "Lusail Fox Hills, commercial street 112, Zone 69 59",
              restaurantLogo: Images.reservaResturantLogo,
              food: '3.7',
              service: '4.6',
              shiaha: '3.0',
              ambiance: '4.2',
              noiseLevel: 'low',
            ),
            const RestaurantCard(
              restaurantName: "STARBUCKS",
              restaurantType: 'Cafe’,',
              restaurantLocation:
                  "Lusail Fox Hills, commercial street 112, Zone 69 59",
              restaurantLogo: Images.starbucksResturantLogo,
              food: '3.7',
              service: '4.6',
              shiaha: '3.0',
              ambiance: '4.2',
              noiseLevel: 'low',
            ),
            const RestaurantCard(
              restaurantName: "yaqut Restaurant",
              restaurantType: 'Restaurant, Cafe’',
              restaurantLocation:
                  "Lusail Fox Hills, commercial street 112, Zone 69 59",
              restaurantLogo: Images.yaqutResturantLogo,
              food: '3.7',
              service: '4.6',
              shiaha: '3.0',
              ambiance: '4.2',
              noiseLevel: 'low',
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String restaurantName;
  final String restaurantType;
  final String restaurantLocation;
  final String restaurantLogo;
  final String food;
  final String service;
  final String shiaha;
  final String ambiance;
  final String noiseLevel;
  const RestaurantCard(
      {super.key,
      required this.restaurantName,
      required this.restaurantType,
      required this.restaurantLocation,
      required this.restaurantLogo,
      required this.food,
      required this.service,
      required this.shiaha,
      required this.ambiance,
      required this.noiseLevel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          context.pushNamed('restaurant_details_screen');
        },
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 0.5, color: ColorsManager.kPrimaryColor),
              borderRadius: kRegularBorderRadius),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // border: Border(
                  //     bottom: BorderSide(
                  //         width: 1, color: ColorsManager.kPrimaryColor)),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: ColorsManager.kGreyColorLight,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0.0,
                        top: 0.0,
                        child: PopupMenuButton<int>(
                          icon: SvgPicture.asset(AppIcons.popupMenuIcon),
                          itemBuilder: (context) => [
                            // PopupMenuItem 1
                            const PopupMenuItem(
                              value: 1,
                              // row with 2 children
                              child: Row(
                                children: [
                                  Icon(Icons.star),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Get The App")
                                ],
                              ),
                            ),
                            // PopupMenuItem 2
                            const PopupMenuItem(
                              value: 2,
                              // row with two children
                              child: Row(
                                children: [
                                  Icon(Icons.chrome_reader_mode),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("About")
                                ],
                              ),
                            ),
                          ],
                          offset: Offset(0, 100),
                          color: Colors.grey,
                          elevation: 2,
                          // on selected we show the dialog box
                          onSelected: (value) {
                            // if value 1 show dialog
                            if (value == 1) {
                              print('ssss');
                              // if value 2 show dialog
                            } else if (value == 2) {
                              print('ssss');
                            }
                          },
                          //  {
                          //   return [PopupMenuItem(child: Text('sss')),PopupMenuItem(child: Text('sss')),];
                          // },
                        ),
                      ),
                      ListTile(
                        leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              restaurantLogo,
                            )),
                        title: Text(
                          restaurantName,
                          style: TextStyle(
                              color: ColorsManager.kPrimaryColor, fontSize: 18),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 2,
                            ),
                            SvgPicture.asset(
                              AppIcons.stars,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(restaurantType),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  AppIcons.location,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  restaurantLocation,
                                  style: TextStyle(fontSize: 8),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: ColorsManager.kGreyColorMiddle,
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Food', style: TextStyle(fontSize: 14)),
                          Text(
                            food,
                            style: TextStyle(
                                color: ColorsManager.kPrimaryColor,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Service', style: TextStyle(fontSize: 14)),
                          Text(service,
                              style: TextStyle(
                                  color: ColorsManager.kPrimaryColor,
                                  fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Shiaha', style: TextStyle(fontSize: 14)),
                          Text(shiaha,
                              style: TextStyle(
                                  color: ColorsManager.kPrimaryColor,
                                  fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Ambiance', style: TextStyle(fontSize: 14)),
                          Text(ambiance,
                              style: TextStyle(
                                  color: ColorsManager.kPrimaryColor,
                                  fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('Noise Level',
                              style: TextStyle(fontSize: 14)),
                          Text(noiseLevel,
                              style: TextStyle(
                                  color: ColorsManager.kPrimaryColor,
                                  fontSize: 14)),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class filter extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function() callback;
  const filter(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.kGreyColorDark),
            borderRadius: kRegularBorderRadius,
            color: isSelected
                ? ColorsManager.kGreyColorDark
                : ColorsManager.kBackgroundColor),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 12,
                  color: isSelected
                      ? ColorsManager.kBackgroundColor
                      : ColorsManager.kGreyColorDark),
            ),
          ),
        ),
      ),
    );
  }
}
