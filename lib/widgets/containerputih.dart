import 'package:flutter/material.dart';

class Containerputih extends StatelessWidget {
  final Widget child;
  final double height;
  final double topPadding;
  final double borderRadius;
  final Color backgroundColor;

  const Containerputih({
    Key? key,
    required this.child,
    this.height = 700.0,  
    this.topPadding = 200.0,
    this.borderRadius = 40.0,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius),
          ),
          color: backgroundColor,
        ),
        height: height,  
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: child,
        ),
      ),
    );
  }
}
