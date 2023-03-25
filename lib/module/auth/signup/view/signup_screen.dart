import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/module/auth/signup/controller/signup_controller.dart';
import 'package:easy_trek/widgets/app_button.dart';
import 'package:easy_trek/widgets/my_textfield.dart';
import 'package:easy_trek/widgets/password_field/password_field.dart';
import 'package:easy_trek/widgets/scrollable_column.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ScrollableColumn(
        children: [
          SizedBox(
            height: 15.fh,
          ),
          Text(
            "Sign up",
            style: context.textStyles.headlineLarge,
          ).pb(24),
          MyTextField(
            textController: controller.email,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.trim() == "") {
                return "Please enter your email address.";
              }
              if (!value.isEmailAddress()) {
                return "Please enter a valid email address.";
              }
              return null;
            },
            label: "Email",
            hint: "example@gmail.com",
          ).pb(16),
          PasswordField(
            textEditingController: controller.password,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.trim() == "") {
                return "Please create a password.";
              }
              if (!value.isPasswordValid()) {
                return "Your password should be at least 8 characters, have  at least one capital letter, one small letter and a digit.";
              }
              return null;
            },
            label: "Create a password",
            hint: "must be 8 characters",
          ).pb(16),
          PasswordField(
            textEditingController: controller.confirmPassword,
            textInputAction: TextInputAction.next,
            
            validator: (value) {
              if (value == null || value.trim() == "") {
                return "Please create a password.";
              }
              if (value != controller.password.text.trim()) {
                return "Your password didn't match";
              }
              return null;
            },
            label: "Confirm password",
            hint: "Repeat password",
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


          Obx(() => controller.loading.value?
          const Center(
            child:Text("processing"),
          ):
          AppButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                      controller.register();
                    }
                  },
                  labelText: "Sign up")
              .pb(24))
          ,
          Row(
            children: [
              const Expanded(
                  child: Divider(
                thickness: 1,
              )),
              Text(
                "Or Register with",
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
          )
        ],
      ),
    ));
  }
}
