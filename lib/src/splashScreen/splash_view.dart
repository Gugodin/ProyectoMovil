import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'on_boarding.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  
  ui.Image? image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage('lib/assets/pet.png');

    // _toOnBording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: SizedBox(
          child: CustomPaint(
            painter: _SplashScreanCanvas(image),
          ),
          width: double.infinity,
          height: double.infinity,
        ),



      ),
    );
  }

  _toOnBording() async {

    await Future.delayed(const Duration(milliseconds: 5000), (){});

    print('Hola');

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoarding()));


  }

  void _loadImage(String s) async {

    final data = await rootBundle.load(s);

    final bytes = data.buffer.asUint8List();

    final image = await decodeImageFromList(bytes);

    setState(() {
      this.image = image;
    });
  }

  

} 

class _SplashScreanCanvas extends CustomPainter {

  ui.Image? imageCanvas;

   _SplashScreanCanvas(this.imageCanvas);


  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    
    final paint = Paint();

    paint.color = Colors.amber;

    paint.style = PaintingStyle.fill;

    paint.strokeWidth = 5;
    final path = Path();

    path.lineTo(0, size.height*0.10);

    path.quadraticBezierTo(size.width*0.03, size.height * 0.25, size.width/3, size.height*0.15);
    path.quadraticBezierTo(size.width/2, size.height * 0.25, 2*(size.width/3), size.height*0.15);
    path.quadraticBezierTo(size.width/1.2, size.height * 0.25, 3*(size.width/3), size.height*0.15);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

    final paint2 = Paint();

    paint2.color = Colors.amber;

    paint2.style = PaintingStyle.fill;

    paint2.strokeWidth = 5;

    final path2 = Path();

    path2.lineTo(0, size.height);

    // path2.quadraticBezierTo(size.width*0.03, size.height * 0.25, size.width/3, size.height*0.15);
    // path2.quadraticBezierTo(size.width/2, size.height * 0.25, 2*(size.width/3), size.height*0.15);
    // path2.quadraticBezierTo(size.width/1.2, size.height * 0.25, 3*(size.width/3), size.height*0.15);
    path2.quadraticBezierTo(size.width*0.50, size.height*0.70, size.width, size.height);

    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, paint2);

    canvas.scale(0.24,0.24);
    
    // canvas.drawImage(imageCanvas!, offset, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}