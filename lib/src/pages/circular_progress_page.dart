import 'dart:math';

import 'package:flutter/material.dart';

class CircularProgressPage extends StatelessWidget {
  const CircularProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
          width: 300,
          height: 300,
          child: CustomPaint(
            painter: _MyCircularProgressIndicator(40),
          ),
        ),
      ),
    );
  }
}

class _MyCircularProgressIndicator extends CustomPainter {
  final int percentage;

  _MyCircularProgressIndicator(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 5
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    // ESTA ES LA POCISIÓN DENTRO DLE CONTENEDOR
    final Offset center = Offset(size.width * 0.5, size.height * 0.5);

    final double radius = min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radius, paint);

    final paintArc = Paint()
      ..strokeWidth = 15
      ..color = Colors.blue
      ..style = PaintingStyle.stroke;

    final double arcAngle = 2 * pi * (percentage / 100);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      arcAngle,
      false,
      paintArc,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
