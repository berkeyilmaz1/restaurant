import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/tabs/mixin/create_account_tab_mixin.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';
import 'package:restaurant_app/product/widgets/custom_elevated_button.dart';
import 'package:restaurant_app/product/widgets/custom_text_field.dart';

final class CreateAccountTab extends StatefulWidget {
  const CreateAccountTab({
    super.key,
  });

  @override
  State<CreateAccountTab> createState() => _CreateAccountTabState();
}

class _CreateAccountTabState extends State<CreateAccountTab>
    with CreateAccountTabMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              onChanged: (value) => checkControllersIsEmpty(),
              controller: fullNameController,
              labelText: LocaleKeys.registration_fullName,
              keyboardType: TextInputType.text,
            ),
            CustomTextField(
              onChanged: (value) => checkControllersIsEmpty(),
              controller: emailController,
              labelText: LocaleKeys.registration_email,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextField(
              onChanged: (value) => checkControllersIsEmpty(),
              controller: passwordController,
              labelText: LocaleKeys.registration_password,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            ValueListenableBuilder(
              valueListenable: isControllerEmpty,
              builder: (_, value, __) {
                return CustomElevatedButton(
                  buttonText: LocaleKeys.registration_createAccount,
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
              buttonText: LocaleKeys.registration_singUpGoogle,
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
