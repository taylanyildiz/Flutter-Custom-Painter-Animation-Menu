import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class BottomMenu extends CustomPainter {
  BottomMenu({this.offset});

  final Offset offset;

  double getPostionX(double width) {
    if (offset.dx == 0) {
      return width / 2;
    } else {
      return offset.dx < width ? offset.dx : width / 2;
    }
  }

  double getPositionY(double height) {
    if (offset.dy == 0) {
      return -height / 4;
    } else {
      return offset.dy < -height / 4 && isMenuOpen == false
          ? offset.dy - 100
          : offset.dy < 100 && isMenuOpen == true
              ? offset.dy - 100
              : -height / 4;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 15.0
      ..style = PaintingStyle.fill;

    Path path = Path();

    path.moveTo(0, size.height * 2);
    path.lineTo(0, 0);
    path.quadraticBezierTo(
        getPostionX(size.width), getPositionY(size.height), size.width, 0);
    //path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 2);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
