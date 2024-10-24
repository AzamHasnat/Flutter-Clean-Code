import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: CustomPaint(
          size: Size(200, 200),
          painter: MyCustomPainter(),
          child: Text("data"),
        ),
      ),
    );
  }
}