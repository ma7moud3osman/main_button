import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';

getBackgroundColor(MainButtonEnum mainButtonEnum, BuildContext context,
    {required Color? color}) {
  if (color != null) return color;
  switch (mainButtonEnum) {
    case MainButtonEnum.primary:
      return Theme.of(context).primaryColor;
    case MainButtonEnum.secondary:
      return Theme.of(context).scaffoldBackgroundColor;
    case MainButtonEnum.tertiary:
      return Colors.transparent;
  }
}

getBorderColor(MainButtonEnum mainButtonEnum, BuildContext context,
    {required Color? color}) {
  if (color != null) return color;
  switch (mainButtonEnum) {
    case MainButtonEnum.primary:
      return Theme.of(context).primaryColor;
    case MainButtonEnum.secondary:
      return Theme.of(context).primaryColor;
    case MainButtonEnum.tertiary:
      return Colors.transparent;
  }
}

getTextColor(MainButtonEnum mainButtonEnum, BuildContext context,
    {required Color? color}) {
  if (color != null) return color;
  switch (mainButtonEnum) {
    case MainButtonEnum.primary:
      return Colors.white;
    case MainButtonEnum.secondary:
      return Theme.of(context).primaryColor;
    case MainButtonEnum.tertiary:
      return Theme.of(context).primaryColor;
  }
}

getLoadingColor(MainButtonEnum mainButtonEnum, BuildContext context,
    {required Color? color}) {
  if (color != null) return color;
  switch (mainButtonEnum) {
    case MainButtonEnum.primary:
      return Colors.white;
    case MainButtonEnum.secondary:
      return Theme.of(context).primaryColor;
    case MainButtonEnum.tertiary:
      return Theme.of(context).primaryColor;
  }
}
