import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/widgets/password_field/password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    this.textEditingController,
    this.label,
    this.textInputAction,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hint,
  }) : super(key: key);
  final String? label;
  final String? hint;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    final PasswordController controller = Get.put(PasswordController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? 'Password',
          style: context.textTheme.titleMedium,
        ).pb(8),
        TextFormField(
          controller: textEditingController,
          validator: validator,
          obscureText: !controller.showPassword,
          style: const TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: context.color.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: context.color.lightGrey),
                borderRadius: BorderRadius.circular(10)),
            hintText: hint,
            // prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: GestureDetector(
              onTap: () {
                controller.togglePassword(controller.showPassword);
              },
              child: controller.showPassword
                  ? const Icon(
                      Icons.visibility_off,
                    )
                  : const Icon(Icons.visibility),
            ),
          ),
        ),
      ],
    );
  }
}
