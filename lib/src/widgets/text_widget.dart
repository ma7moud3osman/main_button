import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String label;
  final Color? textColor;
  final bool isDisable;
  final TextStyle? labelStyle;

  const TextWidget({
    super.key,
    required this.label,
    required this.isDisable,
    this.textColor,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        label,
        maxLines: 1,
        style: labelStyle ??
            Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: isDisable ? Colors.white : textColor ?? Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 0.0,
                ),
      ),
    );
  }
}
