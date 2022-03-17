import 'dart:math';

import 'package:appvet/src/styles/colors/colors_view.dart';
import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  double po = 0;
  ProgressPainter({required this.po});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..color = ColorSelect.txtBoSubHe;

    //

    var center = Offset(size.width * 0.5, size.height * 0.5);
    var radio = min(size.width * 0.48, size.height * 0.48);
    var porcentaje = pi * 2 * (po / 100);

    canvas.drawCircle(center, radio, paint);

    final paint2 = Paint()
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke
      ..color = ColorSelect.btnBackgroundBo2;

    //
    // var center = Offset(size.width * 0.48, size.height * 0.48);

    var x = Rect.fromCircle(center: center, radius: radio);

    canvas.drawArc(x, -pi / 2, porcentaje, false, paint2);

    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw true;
  }
}
