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
    fontWeight: FontWeight.bold,
  );
}
