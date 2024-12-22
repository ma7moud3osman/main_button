import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';
import 'package:main_button/src/functions/get_button_color.dart';
import 'package:main_button/src/widgets/text_widget.dart';

import 'elevated_button_widget.dart';

part 'main_icon_button.dart';

/// MainButtonEnum - primary - secondary - tertiary
enum MainButtonEnum {
  primary,
  secondary,
  tertiary,
}

/// A custom icon button widget that provides a variety of styling and functionality options.
///
/// This button supports various states such as loading and disabled, allows customization
/// of its appearance through properties like padding, border radius, and colors, and can display
/// either an image, an icon, or text.
class MainButton extends StatelessWidget {
  /// The width of the button. If `null`, the button will use a default width based on other properties.
  final double? width;
  final double? maxWidth;

  /// The height of the button. If `null`, the button will use a default width based on other properties.
  /// Default is `44`.
  final double? height;

  /// The padding inside the button. This determines the space between the button's content and its border.
  /// Default is `12`.
  final EdgeInsets? padding;

  /// The border radius of the button. This defines how rounded the button's corners are.
  /// Default is `8`.
  final double borderRadius;

  /// A callback function that is triggered when the button is pressed. If `null`, the button will not respond to taps.
  final void Function()? onPressed;

  /// The label text displayed on the button. If `null`, no text will be shown.
  final String label;
  final TextStyle? labelStyle;

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

  /// Creates a new instance of `CustomIconButton`.
  ///
  /// The `onPressed` callback will be invoked when the button is tapped unless `isLoading` or `isDisable` is `true`.
  const MainButton({
    super.key,
    this.width = double.infinity,
    this.maxWidth = 370,
    this.height = 44,
    this.padding,
    this.borderRadius = 8,
    required this.label,
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
    this.labelStyle,
  });

  factory MainButton.icon({
    required String label,
    required IconType iconType,
    double? width = double.infinity,
    TextStyle? labelStyle,
    double? maxWidth = 370,
    double borderRadius = 8,
    double height = 44,
    bool smallSize = false,
    double spaceBetweenIconAndText = 8.0,
    String? imagePath,
    IconData? icon,
    void Function()? onPressed,
    double? imageSize,
    double? opacity,
    Color? textColor,
    Color? backgroundColor,
    EdgeInsets? padding,
    Color? disableColor,
    bool isLoading = false,
    bool showShadow = false,
    bool isDisable = false,
    Color borderColor = Colors.transparent,
    MainButtonEnum type = MainButtonEnum.primary,
  }) {
    return _MainIconButton(
      width: width,
      labelStyle: labelStyle,
      maxWidth: maxWidth,
      iconType: iconType,
      label: label,
      imagePath: imagePath,
      icon: icon,
      imageSize: imageSize,
      onPressed: onPressed,
      height: height,
      padding: padding,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      textColor: textColor,
      disableColor: disableColor,
      isLoading: isLoading,
      showShadow: showShadow,
      isDisable: isDisable,
      borderColor: borderColor,
      smallSize: smallSize,
      opacity: opacity,
      contentPadding: spaceBetweenIconAndText,
      type: type,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      maxWidth: maxWidth ?? 370,
      width: width ?? double.infinity,
      height: height?.hh ?? 44.hh,
      padding: padding?.rr,
      borderRadius: borderRadius.rr,
      backgroundColor: backgroundColor,
      textColor: textColor,
      disableColor: disableColor,
      isLoading: isLoading,
      showShadow: showShadow,
      isDisable: isDisable,
      borderColor: borderColor,
      smallSize: smallSize,
      opacity: opacity,
      type: type,
      onPressed: onPressed,
      child: TextWidget(
        label: label,
        isDisable: isDisable,
        labelStyle: labelStyle,
        textColor: getTextColor(type, context, color: textColor),
      ),
    );
  }
}
