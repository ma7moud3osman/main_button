import 'package:flutter/material.dart';

import '../../main_button.dart';

class ButtonStyleClass extends ButtonStyle {
  final double width;
  final double maxWidth;

  final double height;
  final double radius;
  final double? opacity;
  final Color? textColor;
  final Color borderColor;
  final Color? disableColor;
  final Color? background;
  final BuildContext context;
  final bool smallSize;
  final EdgeInsets contentPadding;

  const ButtonStyleClass({
    required this.width,
    required this.maxWidth,
    required this.height,
    required this.radius,
    required this.textColor,
    required this.borderColor,
    required this.background,
    required this.context,
    required this.disableColor,
    required this.smallSize,
    required this.opacity,
    required this.contentPadding,
  });

  ButtonStyle get apply {
    return ButtonStyle(
      // shadowColor: MaterialStateProperty.all(Colors.lightBlue),
      elevation: WidgetStateProperty.all<double?>(0),
      padding: WidgetStateProperty.all(contentPadding),
      minimumSize: WidgetStateProperty.all<Size>(
        smallSize
            ? Size(width, 40)
            : Size((MainWidgetsUtil.isTablet ? maxWidth : width), height),
      ),
      maximumSize: WidgetStateProperty.all<Size>(
        smallSize
            ? Size(width, height)
            : Size((MainWidgetsUtil.isTablet ? maxWidth : width), height),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) => states.contains(WidgetState.disabled)
            ? disableColor ?? Colors.grey.shade100
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
