import 'package:flutter/material.dart';

class AssetsImageWidget extends StatelessWidget {
  final String imagePath;
  final Color? imageColor;
  final double opacity;
  final double size;
  const AssetsImageWidget({
    super.key,
    required this.imagePath,
    this.imageColor,
    required this.opacity,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Image.asset(
        imagePath,
        width: size,
        height: size,
        color: imageColor,
      ),
    );
  }
}
