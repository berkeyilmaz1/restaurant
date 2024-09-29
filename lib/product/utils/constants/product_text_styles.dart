import 'package:flutter/material.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';

final class ProductTextStyles {
  const ProductTextStyles._();
  static const TextStyle onboardTitle = TextStyle(
    fontWeight: FontWeight.w600,
    color: ProductColors.darkTextColor,
    fontSize: WidgetSizes.spacingXl,
  );

  static const TextStyle onboardDescription = TextStyle(
    color: ProductColors.secondaryTextColor,
    fontSize: WidgetSizes.spacingM,
  );

  ///TODO: CHANGE NAME
  static const TextStyle textStyle = TextStyle(
    color: ProductColors.primaryColor,
    fontSize: WidgetSizes.spacingM,
    // fontWeight: FontWeight.bold,
  );

  static const TextStyle blackTextStyle = TextStyle(
    color: ProductColors.darkTextColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle hintTextStyle = TextStyle(
    color: ProductColors.secondaryTextColor,
  );

  static const TextStyle loginButtonTextStyle = TextStyle(
    fontSize: WidgetSizes.spacingMx,
    color: ProductColors.onSecondaryTextColor,
  );
  static const TextStyle googleButtonTextStyle = TextStyle(
    fontSize: WidgetSizes.spacingMx,
    color: ProductColors.black,
  );

  static const TextStyle createAccButtonTextStyle = TextStyle(
    fontSize: WidgetSizes.spacingMx,
    color: ProductColors.onPrimaryTextColor,
  );
}
