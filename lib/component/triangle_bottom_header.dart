import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class TriangleBottomHeader extends StatelessWidget {
    TriangleBottomHeader(this.child);

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
      ..style = PaintingStyle.fill;

    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(0.0, 0.0);
    path.close();

    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(TriangleCut oldDelegate) {
    return false;
  }
}
