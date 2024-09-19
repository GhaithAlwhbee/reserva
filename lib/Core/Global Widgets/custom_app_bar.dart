import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reserva/Core/Assets/app_icons.dart';

import '../Theme & Constants/Colors.dart';

AppBar customAppBar(
    {required BuildContext context,
    required String title,
    required bool backButton,
    required bool searchButton,
    }) {
  return backButton
      ? AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 16,
              color: ColorsManager.kGreyColorDark,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(title, style: Theme.of(context).textTheme.headline2!
              // .copyWith(color: const Color.fromRGBO(60, 60, 59, 1)),
              ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.filtter,
              ),
            ),
            searchButton?
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.search,
              ),
            ):Container()
          ],
        )
      : AppBar(
          title: Text(title, style: Theme.of(context).textTheme.headline2!
              // .copyWith(color: const Color.fromRGBO(60, 60, 59, 1)),
              ),
        );
}
