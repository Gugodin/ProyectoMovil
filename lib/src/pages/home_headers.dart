import 'package:appvet/src/widgets/primercanva.dart';
import 'package:appvet/src/widgets/segundocanva.dart';
import 'package:appvet/src/widgets/tercercanva.dart';
import 'package:appvet/src/widgets/w_headers.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThirdCanva(),
    );
  }
}