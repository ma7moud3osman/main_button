import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String label;
  final Color? textColor;
  final bool isDisable;
  final TextStyle? textStyle;

  const TextWidget({
    super.key,
    required this.label,
    this.textColor,
    required this.isDisable,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        label,
        maxLines: 1,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: isDisable ? Colors.white : textColor ?? Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 0.0,
            ),
      ),
    );
  }
}
