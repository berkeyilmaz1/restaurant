import 'package:flutter/material.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/registration_bottom_sheet_mixin.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';
import 'package:restaurant_app/product/widgets/custom_text_field.dart';

part 'tabs/create_account_tab.dart';
part 'tabs/login_tab.dart';

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
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(WidgetSizes.spacingXxl9),
          child: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
              ///make a theme for the tab bar
              labelColor: ProductColors.primaryColor,
              dividerColor: ProductColors.transparent,
              indicatorColor: ProductColors.primaryColor,
              unselectedLabelColor: ProductColors.secondaryTextColor,
              tabs: tabs,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            CreateAccountTab(),
            LoginTab(),
          ],
        ),
      ),
    );
  }
}
