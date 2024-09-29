part of '../registration_bottom_sheet.dart';

final class LoginTab extends StatelessWidget {
  const LoginTab({
 
    super.key,
  });

 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
          
              fieldName: LocaleKeys.registration_email,
              hintName: LocaleKeys.registration_emailHint,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomTextField(
            
              fieldName: LocaleKeys.registration_password,
              hintName: LocaleKeys.registration_passwordHint,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}
