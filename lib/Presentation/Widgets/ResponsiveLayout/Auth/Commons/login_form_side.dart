import 'package:flutter/gestures.dart';
import 'package:ui_task/Application/Services/Navigation/navigation.dart';
import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class LoginFormSide extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  LoginFormSide(
    BuildContext context, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.width(0.05),
        vertical: context.height(0.03),
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 24,
                      color: Color(0xffA3AED0),
                    ),
                  ),
                  Expanded(
                    child: AppText(
                      AppStrings.backToDashboard,
                      style: StylesText.mediumText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height(0.1),
              ),
              AppText(
                AppStrings.signIn,
                style: StylesText.largeText,
              ),
              AppText(
                AppStrings.enterEmailPassword,
                style: StylesText.mediumText,
              ),
              SizedBox(height: context.height(0.02)),
              CustomButton(
                  text: AppStrings.signInWithGoogle,
                  image: ImageAssets.icGoogle,
                  textColor: const Color(0xff2B3674),
                  backColor: const Color(0xffF4F7FE),
                  ontap: () {
                    if (_formKey.currentState!.validate()) {}
                  }),
              SizedBox(height: context.height(0.02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffE0E5F2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Flexible(
                      child: AppText(
                        'Or',
                        style: StylesText.mediumText,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffE0E5F2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.height(0.02)),
              //Email TextField
              AppText(
                AppStrings.email,
                style: StylesText.mediumText.copyWith(
                  color: const Color(0xff2B3674),
                ),
              ),
              SizedBox(height: context.height(0.01)),
              SizedBox(
                width: context.width(0.8),
                height: context.height(0.06),
                child: TextFormField(
                  decoration: textfieldDecoration(AppStrings.emailHint),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.pleaseEnterEmail;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: context.height(0.02),
              ),
              //Passwword TextField
              AppText(
                AppStrings.password,
                style: StylesText.mediumText.copyWith(
                  color: const Color(0xff2B3674),
                ),
              ),
              SizedBox(height: context.height(0.01)),
              SizedBox(
                width: context.width(0.8),
                height: context.height(0.06),
                child: TextFormField(
                  obscureText: true,
                  decoration: textfieldDecoration(
                    AppStrings.passwordHint,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.pleaseEnterPassword;
                    } else if (!Validator().isValidPassword(value)) {
                      return AppStrings.enterValidPassword;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: context.height(0.02)),
              CustomButton(
                  text: AppStrings.signIn,
                  image: null,
                  textColor: const Color(0xffFFFFFF),
                  backColor: const Color(0xff4318FF),
                  ontap: () {
                    if (_formKey.currentState!.validate()) {
                      // Navigate.toPushReplacement(context,   TabletHome());
                    }
                  }),
              SizedBox(height: context.height(0.02)),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.notRegister,
                      style: StylesText.mediumText.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff2B3674),
                      ),
                    ),
                    TextSpan(
                      text: AppStrings.createAccount,
                      style: StylesText.mediumText.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff4318FF),
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.height(0.1)),
              AppText(
                AppStrings.allRights,
                style: StylesText.mediumText.copyWith(
                  height: 1,
                  letterSpacing: -0.02,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
