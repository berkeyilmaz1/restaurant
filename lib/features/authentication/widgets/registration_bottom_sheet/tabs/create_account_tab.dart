part of '../registration_bottom_sheet.dart';

final class CreateAccountTab extends StatelessWidget {
  const CreateAccountTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: PagePadding.allNormal(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              fieldName: LocaleKeys.registration_fullName,
              hintName: LocaleKeys.registration_fullNameHint,
              keyboardType: TextInputType.text,
            ),
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
