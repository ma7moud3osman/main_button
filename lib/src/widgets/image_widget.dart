import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';

import 'assets_image_widget.dart';
import 'icon_widget.dart';
import 'svg_image_widget.dart';

enum IconType { png, svg, icon }

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
    this.opacity = 0.5,
    this.color,
    this.imageSize,
  }) : assert(
          (iconType != IconType.icon && imagePath != null) ||
              (iconType == IconType.icon && icon != null),
          'Either imagePath or icon must be provided',
        );

  @override
  Widget build(BuildContext context) {
    switch (iconType) {
      case IconType.png:
        return AssetsImageWidget(
          imagePath: imagePath!,
          opacity: opacity ?? 0.5,
          imageColor: color,
          size: imageSize ?? 24.rr,
        );
      case IconType.svg:
        return SvgImageWidget(
          imagePath: imagePath!,
          opacity: opacity ?? 0.5,
          imageColor: color,
          size: imageSize ?? 24.rr,
        );
      case IconType.icon:
        return IconWidget(
          icon: icon!,
          size: imageSize ?? 24.rr,
          iconColor: color,
        );
    }
  }
}
