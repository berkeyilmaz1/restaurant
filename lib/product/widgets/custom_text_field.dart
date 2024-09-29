import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';

/// CustomTextField is a custom text field widget that can be used to create text fields with a label and hint text.
final class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.keyboardType,
    required this.labelText,
    this.obscureText = false,
    super.key,
    this.validator,
    this.controller,
    this.onChanged,
  });
  final TextInputType? keyboardType;
  final String Function(String?)? validator;
  final TextEditingController? controller;
  final String labelText;
  final bool obscureText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.verticalLowSymmetric(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: onChanged,
            controller: controller,
            cursorColor: ProductColors.primaryColor,
            obscureText: obscureText,
            keyboardType: keyboardType,
            validator: validator,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              floatingLabelStyle: const TextStyle(
                color: ProductColors.primaryColor,
              ),
              labelText: labelText.tr(),
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
