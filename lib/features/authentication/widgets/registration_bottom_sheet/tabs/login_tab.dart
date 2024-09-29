import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/tabs/mixin/login_tab_mixin.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';
import 'package:restaurant_app/product/widgets/custom_elevated_button.dart';
import 'package:restaurant_app/product/widgets/custom_text_field.dart';

final class LoginTab extends StatefulWidget {
  const LoginTab({
    super.key,
  });

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> with LoginTabMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              controller: emailController,
              labelText: LocaleKeys.registration_email,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextField(
              controller: passwordController,
              labelText: LocaleKeys.registration_password,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    LocaleKeys.registration_forgotPassword,
                    style: ProductTextStyles.textStyle,
                  ).tr(),
                ),
              ],
            ),
            ValueListenableBuilder(
              valueListenable: isControllerEmpty,
              builder: (_, value, __) {
                return CustomElevatedButton(
                  buttonText: LocaleKeys.registration_login,
                  backgroundColor: ProductColors.primaryColor,
                  onPressed: () {},
                  buttonTextStyle: ProductTextStyles.createAccButtonTextStyle,
                ).ext.toDisabled(disable: value);
              },
            ),
            const Divider(
              indent: WidgetSizes.spacingXxl12,
              endIndent: WidgetSizes.spacingXxl12,
            ),
            CustomElevatedButton(
              buttonText: LocaleKeys.registration_loginGoogle,
              backgroundColor: ProductColors.boxColor,
              onPressed: () {},
              buttonTextStyle: ProductTextStyles.googleButtonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
