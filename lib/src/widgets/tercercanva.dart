import 'package:flutter/material.dart';

class SecondCanva extends StatelessWidget {
  const SecondCanva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
      
        child: CustomPaint(
          
          painter:_WHeaderPainter(),
        ),
        
       
      );
   
  }
}

class _WHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,

    );
    const textSpan = TextSpan(
      text:"Hola mundo canvas",
      style : textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    ); 
    textPainter.layout(minWidth: 0,maxWidth: size.width);
    final xCenter = (size.width - textPainter.width) *0.1;
    final yCenter = (size.height+textPainter.height)*0.05;
    final offset = Offset(xCenter, yCenter);
    

    final paint = Paint();
    paint.color =Colors.purple;
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;
    final path = new Path();
    path.moveTo(0, size.height* 1);
    //path.lineTo(size.width, size.height* 0.5);
    path.lineTo(size.width,0);
    path.lineTo(0,0);
    
    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}