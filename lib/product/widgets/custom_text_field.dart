import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';

/// CustomTextField is a custom text field widget that can be used to create text fields with a label and hint text.
final class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.fieldName,
    required this.keyboardType,
 
    this.obscureText = false,
    super.key,
    this.validator,
    this.hintName,
  });
  final TextInputType? keyboardType;
  final String Function(String?)? validator;
  final String fieldName;
  final String? hintName;
  final bool obscureText;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.verticalLowSymmetric(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const PagePadding.horizontal16Symmetric(),
            child: Text(
              fieldName,
              style: ProductTextStyles.blackTextStyle,
            ).tr(),
          ),
          TextFormField(
      
            obscureText: obscureText,
            keyboardType: keyboardType,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintName?.tr(),
              hintStyle: ProductTextStyles.hintTextStyle,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(WidgetSizes.spacingMx),
                borderSide: const BorderSide(
                  color: ProductColors.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(WidgetSizes.spacingMx),
                borderSide: const BorderSide(
                  color: ProductColors.primaryTextColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(WidgetSizes.spacingMx),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
