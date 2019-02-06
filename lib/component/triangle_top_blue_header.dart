import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class TriangleTopBlueHeader extends StatelessWidget {
    TriangleTopBlueHeader({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
      painter: new TriangleCut(),
      child: child,
    );
  }
}

class TriangleCut extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blueAccent
      ..isAntiAlias = true
      ..style = PaintingStyle.fill;

    Path path = new Path();
    path.lineTo(0.0, size.height * 0.75);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    path.close();

    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.blueAccent, 4.0, true);
    canvas.restore();
  }

  @override
  bool shouldRepaint(TriangleCut oldDelegate) {
    return false;
  }
}