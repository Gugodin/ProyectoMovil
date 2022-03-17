import 'dart:io';

import 'package:appvet/src/painter/progress_painter.dart';
import 'package:appvet/src/styles/colors/colors_view.dart';
import 'package:flutter/material.dart';

class ProgresView extends StatefulWidget {
  ProgresView({Key? key}) : super(key: key);

  @override
  State<ProgresView> createState() => _ProgresViewState();
}

class _ProgresViewState extends State<ProgresView> {


  double porInicial = 0;

  @override
  void initState() {
    // TODO: implement initState
    // cronometro();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Container(
          // color: ColorSelect.paginatorNext,
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: ProgressPainter(po: porInicial),
          ),
        ),
      ),
    );
  }

  cronometro() {

    setState(() {
      while (true) {
        sleep(const Duration(seconds: 1));
        print(porInicial);
        porInicial += 2;

        if (porInicial == 100) {
          porInicial = 0;
        }
      }
    });
  }

}
