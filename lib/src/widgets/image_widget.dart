import 'package:flutter/material.dart';

import 'assets_image_widget.dart';
import 'icon_widget.dart';
import 'svg_image_widget.dart';

class ImageWidget extends StatelessWidget {
  final IconType iconType;
  final IconData? icon;
  final String? imagePath;
  final double? opacity;
  final Color? color;
  final double? imageSize;

  const ImageWidget({
    super.key,
    required this.iconType,
    this.icon,
    this.imagePath,
    this.opacity,
    this.color,
    this.imageSize,
  }) : assert(
          (iconType != IconType.icon && imagePath != null) ||
              (iconType == IconType.icon && icon != null),
          'Either imagePath or icon must be provided',
        );

  @override
  Widget build(BuildContext context) {
    return getImageWidget(
      iconType: iconType,
      color: color,
      imagePath: imagePath,
      icon: icon,
      opacity: opacity,
      size: imageSize,
    );
  }
}

getImageWidget({
  required IconType iconType,
  IconData? icon,
  String? imagePath,
  double? opacity,
  Color? color,
  double? size,
}) {
  switch (iconType) {
    case IconType.png:
      return AssetsImageWidget(
        imagePath: imagePath!,
        opacity: opacity ?? 0.5,
        imageColor: color,
        size: size ?? 24,
      );
    case IconType.svg:
      return SvgImageWidget(
        imagePath: imagePath!,
        opacity: opacity ?? 0.5,
        imageColor: color,
        size: size ?? 24,
      );
    case IconType.icon:
      return IconWidget(
        icon: icon!,
        size: size ?? 24,
        iconColor: color,
      );
  }
}

enum IconType {
  png,
  svg,
  icon,
}
