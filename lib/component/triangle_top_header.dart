import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class TriangleTopHeader extends StatelessWidget {
    TriangleTopHeader({@required this.child});

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
      ..color = Colors.white
      ..isAntiAlias = true
      ..style = PaintingStyle.fill;

    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width, 0.0);
    path.close();
    path.close();

    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.black, 2.0, false);
    canvas.restore();
  }

  @override
  bool shouldRepaint(TriangleCut oldDelegate) {
    return false;
  }
}