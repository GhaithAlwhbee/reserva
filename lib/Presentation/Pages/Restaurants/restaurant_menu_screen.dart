import 'package:flutter/material.dart';
import 'package:reserva/Core/Assets/app_images.dart';
import 'package:reserva/Core/Theme%20&%20Constants/Colors.dart';

class restaurantMenuScreen extends StatefulWidget {
  const restaurantMenuScreen({super.key});

  @override
  State<restaurantMenuScreen> createState() => _restaurantMenuScreenState();
}

class _restaurantMenuScreenState extends State<restaurantMenuScreen> {
  final menus = [
    Images.restaurantMenu,
    Images.restaurantMenu,
    Images.restaurantMenu,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: MediaQuery.of(context).size.height,
        child: Theme(
          data: Theme.of(context).copyWith(
              scrollbarTheme: ScrollbarThemeData(
                  thumbColor:
                      MaterialStateProperty.all(ColorsManager.kYellowColor))),
          child: Scrollbar(
            thickness: 8.0,
            // trackVisibility: true,
            // thumbVisibility: true,
            radius: Radius.circular(20),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Image.asset(
                    menus[index],
                    fit: BoxFit.cover,
                  );
                },
                itemCount: menus.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 5.0);
                }),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: ColorsManager.kGreyColorMiddle,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Download PDF',
                style: TextStyle(color: ColorsManager.kPrimaryColor),
              ),
              Row(
                children: [
                  Text(
                    '1/3 ',
                    style: TextStyle(color: ColorsManager.kPrimaryColor),
                  ),
                  Text(
                    'pages',
                    style: TextStyle(
                        fontSize: 10, color: ColorsManager.kPrimaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
