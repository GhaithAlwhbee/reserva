import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reserva/Core/Assets/app_icons.dart';
import 'package:reserva/Core/Assets/app_images.dart';
import 'package:reserva/Core/Theme%20&%20Constants/Colors.dart';
import 'package:reserva/Core/Theme%20&%20Constants/constants.dart';

class RestaurantHomeScreen extends StatefulWidget {
  const RestaurantHomeScreen({super.key});

  @override
  State<RestaurantHomeScreen> createState() => _RestaurantHomeScreenState();
}

class _RestaurantHomeScreenState extends State<RestaurantHomeScreen> {
  final foodImages = [
    Images.food3,
    Images.food2,
    Images.food3,
    Images.food2,
    Images.food3,
    Images.food2,
    Images.food3,
    Images.food2,
    Images.food3,
    Images.food2,
    Images.food3,
    Images.food2,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis',
            style: TextStyle(fontSize: 14),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      child: Text(
                        'Open',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      width: 50,
                      child: Image.asset(AppIcons.pointIcon),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppIcons.telephoneIcon),
                    ),
                    Text(
                      '+974 9876 543 988',
                      style: TextStyle(
                          color: ColorsManager.kPrimaryColor, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      child: Text(
                        'Closes at:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Text(
                      '8:00 PM',
                      style: TextStyle(
                          color: ColorsManager.kPrimaryColor, fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppIcons.telephoneIcon),
                    ),
                    Text(
                      '+974 9876 543 988',
                      style: TextStyle(
                          color: ColorsManager.kPrimaryColor, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Image.asset(foodImages[index]);
                },
                itemCount: foodImages.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10.0);
                }),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                'View more ...',
                style: TextStyle(color: ColorsManager.kPrimaryColor),
              )),
          const SizedBox(
            height: 5,
          ),
          const EvaluationCard(
            food: '3.7',
            service: '4.6',
            shiaha: '3.0',
            ambiance: '4.2',
            noiseLevel: 'low',
          ),
          Container(
            decoration: BoxDecoration(
              border:
                  Border.all(width: 0.5, color: ColorsManager.kPrimaryColor),
              borderRadius: kRegularBorderRadius,
              color: ColorsManager.kGreyColorLight,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ServicItem(
                        icon: AppIcons.restaurantServiceIcon,
                        text: 'Restaurant',
                      ),
                      ServicItem(
                        icon: AppIcons.buffetServiceIcon,
                        text: 'Buffet',
                      ),
                      ServicItem(
                        icon: AppIcons.telephoneServiceIcon,
                        text: '+974 134 6586 876',
                      ),
                      ServicItem(
                        icon: AppIcons.smokeAllowedServiceIcon,
                        text: 'Smoke allowed',
                      ),
                      ServicItem(
                        icon: AppIcons.shishaServiceIcon,
                        text: 'Has Shisha',
                      ),
                      ServicItem(
                        icon: AppIcons.breakFastServiceIcon,
                        text: 'Breakfast',
                      ),
                      ServicItem(
                        icon: AppIcons.dessertsServiceIcon,
                        text: 'Desserts & bakes',
                      ),
                      ServicItem(
                        icon: AppIcons.familyDiningServiceIcon,
                        text: 'Family Dining',
                      ),
                      ServicItem(
                        icon: AppIcons.luxuryDiningServiceIcon,
                        text: 'Luxury Dining',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ServicItem(
                        icon: AppIcons.easternServiceIcon,
                        text: 'Eastern',
                      ),
                      ServicItem(
                        icon: AppIcons.noAlcoholServiceIcon,
                        text: 'No Alcohol',
                      ),
                      ServicItem(
                        icon: AppIcons.valetServiceIcon,
                        text: 'Valet',
                      ),
                      ServicItem(
                        icon: AppIcons.outdoorServiceIcon,
                        text: 'there is outdoor',
                      ),
                      ServicItem(
                        icon: AppIcons.brunchServiceIcon,
                        text: 'Brunch',
                      ),
                      ServicItem(
                        icon: AppIcons.cafeServiceIcon,
                        text: 'Cafe’',
                      ),
                      ServicItem(
                        icon: AppIcons.kidsFriendlyServiceIcon,
                        text: 'Kids Friendly',
                      ),
                      ServicItem(
                        icon: AppIcons.liveMusicServiceIcon,
                        text: 'Live Music',
                      ),
                      ServicItem(
                        icon: AppIcons.wiFiServiceIcon,
                        text: 'WiFi',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 0.5, color: ColorsManager.kPrimaryColor),
                borderRadius: kRegularBorderRadius,
                color: ColorsManager.kGreyColorLight,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.timeIcon),
                        SizedBox(width: 5,),
                        Text(
                          'Working Hours',
                          style: TextStyle(color: ColorsManager.kPrimaryColor),
                        )
                      ],
                    ),
                  ),
                  DateItem(
                    dayName: 'Sunday',
                    openTime: '9:00 Am',
                    closedTime: '11:00 Pm',
                    isDark: true
                  ),
                  DateItem(
                    dayName: 'Monday',
                    openTime: '9:00 Am',
                    closedTime: '11:00 Pm',
                    isDark: false
                  ),
                  DateItem(
                    dayName: 'Tuesday',
                    openTime: '9:00 Am',
                    closedTime: '11:00 Pm',
                    isDark: true
                  ),
                  DateItem(
                    dayName: 'Wednesday',
                    openTime: '9:00 Am',
                    closedTime: '11:00 Pm',
                    isDark: false
                  ),
                  DateItem(
                    dayName: 'Thursday',
                    openTime: '9:00 Am',
                    closedTime: '11:00 Pm',
                    isDark: true
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class DateItem extends StatelessWidget {
  final String dayName;
  final String openTime;
  final String closedTime;
  final bool isDark;
  const DateItem(
      {super.key,
      required this.dayName,
      required this.openTime,
      required this.closedTime, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kRegularBorderRadius,
          color: isDark? ColorsManager.kGreyColorMiddle: ColorsManager.kGreyColorLight,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                child: Text(dayName)),
              Text(openTime),
              Text(closedTime),
            ],
          ),
        ),
      ),
    );
  }
}

class ServicItem extends StatelessWidget {
  final String icon;
  final String text;
  const ServicItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(icon),
            Text(
              text,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

class EvaluationCard extends StatelessWidget {
  final String food;
  final String service;
  final String shiaha;
  final String ambiance;
  final String noiseLevel;
  const EvaluationCard(
      {super.key,
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
          // context.pushNamed('restaurant_details_screen');
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '4.7',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: ColorsManager.kPrimaryColor),
                              ),
                              SvgPicture.asset(
                                AppIcons.stars,
                              ),
                              Text(
                                'Total: 265',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Colors.black,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EvaluateStars(
                                star: '5',
                                count: 50,
                              ),
                              EvaluateStars(
                                star: '4',
                                count: 150,
                              ),
                              EvaluateStars(
                                star: '3',
                                count: 10,
                              ),
                              EvaluateStars(
                                star: '2',
                                count: 40,
                              ),
                              EvaluateStars(
                                star: '1',
                                count: 5,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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

class EvaluateStars extends StatelessWidget {
  final String star;
  final double count;
  const EvaluateStars({super.key, required this.star, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          star,
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 3,
          width: count,
          color: ColorsManager.kPrimaryColor,
        )
        // Divider(thickness: 2,color: Colors.black,height: 2,)
      ],
    );
  }
}
