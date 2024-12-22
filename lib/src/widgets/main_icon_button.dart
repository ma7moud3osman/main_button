part of 'main_button.dart';

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
    required super.maxWidth,
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
    required super.labelStyle,
  });

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
