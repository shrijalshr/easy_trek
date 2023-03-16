import 'package:flutter/material.dart';

import '../core/theme/app_color.dart';

enum AppButtonState { primary, secondary, disabled }

///
/// Takes full parent width. Make sure to wrap with Expanded or Flex when using in a row or similar widgets.
///
/// Use the default constructor for primary button
///
/// Use the corresponding factory constructors for the secondary and disabled state as
///
/// ```AppButton()``` for primary
///
/// ```AppButton.secondary()``` for secondary
///
/// ```AppButton.disabled()``` for disabled state
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    this.labelText,
    this.height = 52,
    this.borderRadius = 8,
    this.elevation = 0,
    this.padding = const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 12,
    ),
    this.buttonState = AppButtonState.primary,
    this.labelColor,
    this.label,
  });
  final double height;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final String? labelText;
  final Widget? label;
  final Color? labelColor;
  final VoidCallback onPressed;

  /// Specifies the primary, secondary and disabled state of [AppButton].
  ///
  /// Pass [buttonState] on specific scenarios only as
  /// ```
  /// AppButton(
  ///     onPressed: () {},
  ///     label: AppString.getStartedText,
  ///     buttonState: isEnabled ? AppButtonState.primary : AppButtonState.disabled,
  /// )
  /// ```
  /// Else use the corresponding factory constructor instead.
  final AppButtonState buttonState;

  factory AppButton.secondary({
    required VoidCallback onPressed,
    Widget? label,
    String? labelText,
    double height = 52,
    double borderRadius = 4,
    double elevation = 0,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 12,
    ),
  }) {
    return AppButton(
      onPressed: onPressed,
      label: label,
      labelText: labelText,
      buttonState: AppButtonState.secondary,
      height: height,
      borderRadius: borderRadius,
      elevation: elevation,
      padding: padding,
      labelColor: AppColor.light.darkGrey,
    );
  }
  factory AppButton.disabled({
    String? labelText,
    Widget? label,
    double height = 52,
    double borderRadius = 4,
    double elevation = 0,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 12,
    ),
  }) {
    return AppButton(
      onPressed: () {},
      label: label,
      labelText: labelText,
      buttonState: AppButtonState.disabled,
      height: height,
      borderRadius: borderRadius,
      elevation: elevation,
      padding: padding,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColor = Theme.of(context).extension<AppColor>()!;
    return ElevatedButton(
      onPressed: buttonState == AppButtonState.disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonState == AppButtonState.primary
            ? appColor.darkGrey
            : appColor.white,
        foregroundColor: buttonState == AppButtonState.primary
            ? appColor.white
            : appColor.darkGrey,
        disabledBackgroundColor: appColor.darkGrey.withOpacity(0.5),
        disabledForegroundColor: appColor.white,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: buttonState == AppButtonState.secondary
              ? BorderSide(
                  color: appColor.lightGrey,
                )
              : BorderSide.none,
        ),
        padding: padding,
        minimumSize: Size.fromHeight(height),
        shadowColor: Colors.transparent,
      ),
      child: Center(
        child: label ??
            Text(
              labelText ?? "",
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: buttonState == AppButtonState.primary
                        ? appColor.white
                        : appColor.darkGrey,
                  ),
            ),
      ),
    );
  }
}
