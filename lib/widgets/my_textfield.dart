// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_trek/core/extension/app_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.label,
    this.initialText,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.readOnly = false,
    this.validator,
    this.inputType,
    this.textController,
    this.borderRadius,
    this.textInputAction,
    this.onChanged,
    this.onSaved,
    this.inputFormatters,
    this.maxLength,
    this.autoFocus = false,
    this.counter,
    this.hint,
    this.border,
    this.filled,
    this.fillColor,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final String? initialText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? counter;
  final int? maxLines;
  final bool readOnly;
  final bool autoFocus;
  final bool? filled;
  final Color? fillColor;
  final int? maxLength;
  final InputBorder? border;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final TextEditingController? textController;
  final double? borderRadius;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? "",
          style: context.textStyles.titleMedium,
        ).pb(8),
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          child: TextFormField(
            autofocus: autoFocus,
            maxLength: maxLength,
            validator: validator,
            controller: textController,
            initialValue: initialText,
            keyboardType: inputType,
            readOnly: readOnly,
            inputFormatters: const [],
            textInputAction: textInputAction,
            maxLines: maxLines,
            style: TextStyle(
              color: context.color.darkGrey,
            ),
            decoration: InputDecoration(
              fillColor: fillColor ?? context.color.white,
              filled: filled ?? true,
              focusColor: context.color.whiteSmoke,
              border: border ??
                  OutlineInputBorder(
                    borderSide: BorderSide(color: context.color.lightGrey),
                    borderRadius: BorderRadius.circular(borderRadius ?? 10),
                  ),
              prefixIcon: prefixIcon,
              hintText: hint,
              counter: counter,
            ),
            onChanged: onChanged,
            onSaved: onSaved,
          ),
        ),
      ],
    );
  }
}
