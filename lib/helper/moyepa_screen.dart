import "package:flutter/material.dart";

class MoyepaScreen extends StatelessWidget {
  final Color renkFont;
  final Color renkArka;
  final double opacity;

  MoyepaScreen(
      {this.renkFont = Colors.white,
      this.renkArka = Colors.transparent,
      this.opacity = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: renkArka.withOpacity(opacity),
      child: Image.asset(
        "images/logo_bg.png",
        color: renkFont,
      ),
    );
  }
}
