import 'package:flutter/material.dart';

double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
double getHeight(BuildContext context) => MediaQuery.of(context).size.height;

const kRegularBorderRadius = BorderRadius.all(Radius.circular(20));
const kCircularBorderRadius = BorderRadius.all(Radius.circular(20));

const double customDropDownHeight = 50;
const double cardTitleScaleFactor = 1.1;
const double cardSubTitleScaleFactor = 1.0;

const EdgeInsets customSearchDropDownPadding =
    EdgeInsets.symmetric(vertical: 12, horizontal: 14);

const EdgeInsets customDropDownPadding =
    EdgeInsets.symmetric(vertical: 13, horizontal: 17);

class Dimensions {
  // static const double FONT_SIZE_EXTRA_SMALL = 10.0;
  // static const double FONT_SIZE_SMALL = 12.0;
  // static  double FONT_SIZE_DEFAULT =14.0;
  // static const double FONT_SIZE_LARGE = 16.0;
  // static const double FONT_SIZE_EXTRA_LARGE = 18.0;
  // static const double FONT_SIZE_OVER_LARGE = 24.0;
}

double FONT_SIZE_EXTRA_SMALL(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 5;
double FONT_SIZE_SMALL(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 6;
double FONT_SIZE_DEFAULT(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 7;
double FONT_SIZE_LARGE(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 8.5;
double FONT_SIZE_EXTRA_LARGE(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 9.3;
double FONT_SIZE_OVER_LARGE(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 10.5;

double ICON_SIZE_EXTRA_SMALL(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 7;
double ICON_SIZE_SMALL(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 8.5;
double ICON_SIZE_DEFAULT(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 9.3;
double ICON_SIZE_LARGE(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 10.5;
double ICON_SIZE_EXTRA_LARGE(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 12.5;
double ICON_SIZE_OVER_LARGE(BuildContext context) =>
    (getHeight(context) / getWidth(context)) * 14.5;
