import 'package:flutter/material.dart';

class ThirdCanva extends StatelessWidget {
  const ThirdCanva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      
      child: CustomPaint(
        painter: _HeaderPainter(),
        ),
    );
  }
}

class _HeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 20
    );

    const textSpan = TextSpan(
      text: 'Hola mundo canva',
      style: textStyle
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    );

    textPainter.layout(minWidth: 0,maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.16;
    final yCenter = (size.height - textPainter.height)* 0.06;

    final xCenter2 = (size.width - textPainter.width) * 0.85;
    final yCenter2 = (size.height - textPainter.height)* 0.06;

    final offset = Offset(xCenter, yCenter);

    final offset2 = Offset(xCenter2, yCenter2);



        
    final paint = Paint();
    paint.color = Colors.purple; 
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(0, 0);
    
    path.lineTo(size.width*0.25, size.height * 0.2);
    path.lineTo(size.width * 0.5, 0);

    path.lineTo(size.width*0.75, size.height * 0.2);

    path.lineTo(size.width*1, 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

    canvas.drawPath(path, paint); 
    textPainter.paint(canvas, offset);
    textPainter.paint(canvas, offset2);
    
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }



}