import 'package:flutter/material.dart';

class CircularIndicatorWidget extends StatelessWidget {
  final Color? color;
  const CircularIndicatorWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 15,
        height: 15,
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
