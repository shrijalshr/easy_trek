import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/widgets/app_button.dart';
import 'package:easy_trek/widgets/my_textfield.dart';
import 'package:easy_trek/widgets/password_field/password_field.dart';
import 'package:easy_trek/widgets/scrollable_column.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ScrollableColumn(
        children: [
          SizedBox(
            height: 15.fh,
          ),
          Text(
            "Login",
            style: context.textStyles.headlineLarge,
          ).pb(24),
          const MyTextField(
            label: "Email",
            hint: "example@gmail.com",
          ).pb(16),
          const PasswordField(
            label: "Enter your Password",
            hint: "must be 8 characters",
          ).pb(16),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot password?",
                style: context.textStyles.titleMedium,
              ),
            ),
          ).pb(24),
          AppButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                    Get.toNamed(Routes.homescreen);
                  },
                  labelText: "Login")
              .pb(24),
          Row(
            children: [
              const Expanded(
                  child: Divider(
                thickness: 1,
              )),
              Text(
                "Or Login with",
                style: context.textStyles.titleMedium,
              ).ph(8),
              const Expanded(
                  child: Divider(
                thickness: 1,
              )),
            ],
          ).pb(16),
          AppButton.secondary(
                  onPressed: () {}, label: const Icon(Icons.g_mobiledata))
              .pb(24),
          Center(
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.signup);
              },
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Don’t have an account? ",
                      style: context.textStyles.titleSmall),
                  TextSpan(
                      text: "Sign Up",
                      style: context.textStyles.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold))
                ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}