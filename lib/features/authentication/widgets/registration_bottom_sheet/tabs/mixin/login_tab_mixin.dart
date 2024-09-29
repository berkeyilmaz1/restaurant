import 'package:flutter/material.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/tabs/login_tab.dart';

mixin LoginTabMixin on State<LoginTab> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  ValueNotifier<bool> isControllerEmpty = ValueNotifier<bool>(true);

  @override
  void initState() {
    super.initState();
    setUpControllers();
  }

  void setUpControllers() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController.addListener(checkControllersIsEmpty);
    passwordController.addListener(checkControllersIsEmpty);
  }

  void checkControllersIsEmpty() {
    isControllerEmpty.value =
        emailController.text.isEmpty || passwordController.text.isEmpty;
  }

  @override
  void dispose() {
    emailController.removeListener(checkControllersIsEmpty);
    passwordController.removeListener(checkControllersIsEmpty);
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
