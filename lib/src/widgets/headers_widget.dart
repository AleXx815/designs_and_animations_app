import 'package:flutter/material.dart';

class SquareHeader extends StatelessWidget {
  const SquareHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.pink,
    );
  }
}

class CircularBorderHeader extends StatelessWidget {
  const CircularBorderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
    );
  }
}

class SquareHeaderInclined extends StatelessWidget {
  const SquareHeaderInclined({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderInclinedPainter(),
      ),
    );
  }
}

class _HeaderInclinedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // properties
    paint.color = Colors.pink;
    paint.style = PaintingStyle.fill; // fill es relleno y stroke son las lineas
    paint.strokeWidth = 10.0;

    final path = Path();

    // draw with path and paint
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // esta última linea es opcional, si no la pongo, se pone una linea recta imaginaria para rellenar
    path.lineTo(0, size.height * 0.3);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HeaderInclinedPainter oldDelegate) => true;
}
