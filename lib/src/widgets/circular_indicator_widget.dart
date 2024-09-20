import 'package:flutter/material.dart';

class CircularIndicatorWidget extends StatelessWidget {
  final Color? color;
  final Color? backgroundColor;
  const CircularIndicatorWidget({
    super.key,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 15,
        height: 15,
        child: CircularProgressIndicator(
          color: color ?? Theme.of(context).primaryColor,
          backgroundColor:
              backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
