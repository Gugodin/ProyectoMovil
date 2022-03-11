import 'package:flutter/material.dart';

class FirtsCanva extends StatelessWidget {
  const FirtsCanva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
      
        child: CustomPaint(
          
          painter:_WHeaderPainter4(),
        ),
        
       
      );
   
  }
}

class _WHeaderPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 20,
    );
    const textSpan = TextSpan(
      text: 'Hola mundo canva',
      style: textStyle
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width
    );

    final xCenter = (size.width - textPainter.width)*0.5;
    final yCenter = (size.height -textPainter.height)*0.25;    
    final offset = Offset(xCenter, yCenter);
    

    final paint = Paint();
    paint.color =Colors.purple;
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;

    final path = Path();
    
    //path.moveTo(0, size.height*0.5);
    path.lineTo(size.width*0.5, size.height*0.5);
    path.lineTo(size.width, 0);
    //path.lineTo(0, 0);
    
    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }



}