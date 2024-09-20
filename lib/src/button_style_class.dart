import 'package:flutter/material.dart';

class ButtonStyleClass extends ButtonStyle {
  final double? width;
  final double height;
  final double radius;
  final double? opacity;
  final Color? textColor;
  final Color borderColor;
  final Color? background;
  final BuildContext context;
  final bool smallSize;
  final EdgeInsets contentPadding;

  const ButtonStyleClass({
    required this.width,
    required this.height,
    required this.radius,
    required this.textColor,
    required this.borderColor,
    required this.background,
    required this.context,
    required this.smallSize,
    required this.opacity,
    required this.contentPadding,
  });

  ButtonStyle get apply {
    print('background =>  $background');
    return ButtonStyle(
      // shadowColor: MaterialStateProperty.all(Colors.lightBlue),
      elevation: WidgetStateProperty.all<double?>(0),
      padding: WidgetStateProperty.all(contentPadding),
      minimumSize: WidgetStateProperty.all<Size>(
        smallSize ? Size(width ?? 80, 40) : Size(width ?? 10, height),
      ),
      maximumSize: WidgetStateProperty.all<Size>(
        // smallSize
        //     ?
        Size(width ?? double.infinity, height),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) => states.contains(WidgetState.disabled)
            ? Theme.of(context).primaryColor.withOpacity(opacity ?? 0.7)
            : background ?? Theme.of(context).primaryColor,
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) => states.contains(WidgetState.disabled)
            ? Colors.grey
            : textColor ?? Theme.of(context).scaffoldBackgroundColor,
      ),
      side: WidgetStateProperty.resolveWith<BorderSide>(
        (Set<WidgetState> states) => states.contains(WidgetState.disabled)
            ? BorderSide(color: borderColor, width: 0.5)
            : BorderSide(color: borderColor, width: 0.5),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
