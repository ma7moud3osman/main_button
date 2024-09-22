import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';
import 'package:main_button/src/button_style_class.dart';
import 'package:main_button/src/functions/get_button_color.dart';
import 'package:main_button/src/widgets/circular_indicator_widget.dart';

class ElevatedButtonWidget extends StatelessWidget {
  /// The width of the button. If `null`, the button will use a default width based on other properties.
  final double? width;

  /// The height of the button. If `null`, the button will use a default width based on other properties.
  /// Default is `44`.
  final double height;

  /// The padding inside the button. This determines the space between the button's content and its border.
  /// Default is `12`.
  final EdgeInsets? padding;

  /// The border radius of the button. This defines how rounded the button's corners are.
  /// Default is `8`.
  final double borderRadius;

  /// A callback function that is triggered when the button is pressed. If `null`, the button will not respond to taps.
  final void Function()? onPressed;

  /// The label text displayed on the button. If `null`, no text will be shown.
  final Widget child;

  /// The background color of the button. If `null`, a default color will be used.
  final Color? backgroundColor;

  /// The color of the text displayed on the button. If `null`, a default text color will be used.
  final Color? textColor;

  /// The color of the button when it is disabled. If `null`, a default disabled color will be used.
  final Color? disableColor;

  /// Indicates whether the button is in a loading state. If `true`, the button will show a loading indicator.
  final bool isLoading;

  /// Indicates whether a shadow should be shown behind the button. If `true`, a shadow will be applied.
  final bool showShadow;

  /// The color of the button's border. This is used to outline the button.
  final Color borderColor;

  /// Indicates whether the button is small-sized. If `true`, the button will be rendered smaller.
  final bool smallSize;

  /// Indicates whether the button is disabled. If `true`, the button will be rendered in a disabled state and will not respond to user interaction.
  final bool isDisable;

  /// The opacity of the button. This controls how transparent the button is. If `null`, a default opacity will be used.
  final double? opacity;
  final MainButtonEnum type;
  const ElevatedButtonWidget({
    super.key,
    this.width = double.infinity,
    this.height = 44,
    this.padding,
    this.borderRadius = 8,
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.disableColor,
    this.isLoading = false,
    this.showShadow = true,
    this.isDisable = false,
    this.borderColor = Colors.transparent,
    this.smallSize = false,
    this.opacity,
    this.type = MainButtonEnum.primary,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.all(Radius.circular(borderRadius));
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
        ),
        shadows: !showShadow
            ? null
            : const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
      ),
      child: ElevatedButton(
        style: ButtonStyleClass(
          width: width,
          height: height,
          radius: borderRadius,
          textColor: getTextColor(type, context, color: textColor),
          borderColor: getBorderColor(type, context, color: borderColor),
          background: getBorderColor(type, context, color: backgroundColor),
          context: context,
          smallSize: smallSize,
          opacity: opacity,
          contentPadding: padding ?? const EdgeInsets.all(12),
        ).apply,
        onPressed: isLoading || isDisable ? null : onPressed,
        child: isLoading
            ? SizedBox(
                width: smallSize ? width ?? 60 : width,
                height: smallSize ? 40 : height,
                child: CircularIndicatorWidget(
                  color: getLoadingColor(type, context, color: textColor),
                ),
              )
            : child,
      ),
    );
  }
}
