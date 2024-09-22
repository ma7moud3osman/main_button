import 'package:flutter/material.dart';
import 'package:main_button/src/functions/get_button_color.dart';
import 'package:main_button/src/widgets/image_widget.dart';
import 'package:main_button/src/widgets/text_widget.dart';

import 'widgets/elevated_button_widget.dart';

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
  final String label;

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
  });
  factory MainButton.icon({
    required String label,
    required IconType iconType,
    double spaceBetweenIconAndText = 8.0,
    String? imagePath,
    IconData? icon,
    void Function()? onPressed,
    double? imageSize,
    double? width = double.infinity,
    double? opacity,
    double borderRadius = 8,
    double height = 44,
    bool smallSize = false,
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
      iconType: iconType,
      label: label,
      imagePath: imagePath,
      icon: icon,
      imageSize: imageSize,
      width: width,
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
      width: width,
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
      type: type,
      onPressed: onPressed,
      child: TextWidget(
        label: label,
        isDisable: isDisable,
        textColor: getTextColor(type, context, color: textColor),
      ),
    );
  }
}

/// A custom icon button widget that provides a variety of styling and functionality options.
///
/// This button supports various states such as loading and disabled, allows customization
/// of its appearance through properties like padding, border radius, and colors, and can display
/// either an image, an icon, or text.
class _MainIconButton extends MainButton {
  /// The path to an image asset to be displayed inside the button. If `null`, no image will be shown.
  final String? imagePath;

  /// A widget that is used as an icon inside the button. If `null`, no icon will be shown.
  final IconData? icon;

  /// The imageSize of the button. This controls how transparent the button is. If `null`, a default opacity will be used.
  final double? imageSize;
  final double? contentPadding;

  final IconType iconType;

  /// Creates a new instance of `CustomIconButton`.
  ///
  /// The `onPressed` callback will be invoked when the button is tapped unless `isLoading` or `isDisable` is `true`.
  const _MainIconButton({
    required this.imagePath,
    required this.icon,
    required this.imageSize,
    required this.iconType,
    required this.contentPadding,
    required super.width,
    required super.height,
    required super.padding,
    required super.borderRadius,
    required super.onPressed,
    required super.backgroundColor,
    required super.textColor,
    required super.disableColor,
    required super.isLoading,
    required super.showShadow,
    required super.isDisable,
    required super.borderColor,
    required super.smallSize,
    required super.opacity,
    required super.label,
    required super.type,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      width: width,
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
      type: type,
      onPressed: onPressed,
      child: SizedBox(
        width: width,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: icon == null
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.center,
            children: [
              ImageWidget(
                iconType: iconType,
                imagePath: imagePath,
                imageSize: imageSize,
                opacity: opacity,
                color: textColor,
                icon: icon,
              ),
              SizedBox(width: contentPadding),
              TextWidget(
                label: label,
                isDisable: isDisable,
                textColor: textColor ?? Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
