import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/tabs/create_account_tab.dart';

mixin CreateAccountTabMixin on State<CreateAccountTab> {
  late TextEditingController fullNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  ValueNotifier<bool> isControllerEmpty = ValueNotifier<bool>(true);

  @override
  void initState() {
    super.initState();
    setUpControllers();
    fullNameController.addListener(checkControllersIsEmpty);
    emailController.addListener(checkControllersIsEmpty);
    passwordController.addListener(checkControllersIsEmpty);
    authState();
  }

  void authState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  // void createAccount() async {
  //   try {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailController.text, password: passwordController.text);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  void setUpControllers() {
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void checkControllersIsEmpty() {
    isControllerEmpty.value = fullNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty;
  }

  @override
  void dispose() {
    fullNameController.removeListener(checkControllersIsEmpty);
    emailController.removeListener(checkControllersIsEmpty);
    passwordController.removeListener(checkControllersIsEmpty);
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
