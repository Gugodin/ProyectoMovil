import 'package:appvet/src/pages/home_headers.dart';
import 'package:appvet/src/splashScreen/splash_view.dart';
import 'package:appvet/src/widgets/homepage.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: 'SplashScreen',
      routes: {
        'InitialPage': (BuildContext context) => HomePage(),
        'InitialHeader': (BuildContext context) => const HomeHeader(),
        'SplashScreen': (BuildContext context) => SplashScreen(),

      },
      // home: HomePage(),
    );
  }
}
