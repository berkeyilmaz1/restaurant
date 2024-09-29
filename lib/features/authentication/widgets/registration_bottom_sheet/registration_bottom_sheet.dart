import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/features/authentication/view/auth_view.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/registration_bottom_sheet_mixin.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';
import 'package:restaurant_app/product/widgets/custom_text_field.dart';
import 'package:restaurant_app/product/widgets/custom_elevated_button.dart';
 
final class RegistrationBottomSheet extends StatefulWidget {
  const RegistrationBottomSheet({super.key});

  @override
  State<RegistrationBottomSheet> createState() =>
      _RegistrationBottomSheetState();
}

class _RegistrationBottomSheetState extends State<RegistrationBottomSheet>
    with RegistrationBottomSheetMixin {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      ///todo extract
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(WidgetSizes.spacingXl),
        topRight: Radius.circular(WidgetSizes.spacingXl),
      ),
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(WidgetSizes.spacingXxl9),
            child: AppBar(
              automaticallyImplyLeading: false,
              bottom: TabBar(
                labelColor: ProductColors.primaryColor,
                dividerColor: ProductColors.transparent,
                indicatorColor: ProductColors.primaryColor,
                unselectedLabelColor: ProductColors.secondaryTextColor,
                tabs: tabs,
              ),
            ),
          ),
          body: TabBarView(
            children: authPages,
          ),
        ),
      ),
    );
  }
}
