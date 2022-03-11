import 'package:appvet/src/styles/colors/colors_view.dart';
import 'package:appvet/src/widgets/ContentBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  int pages = 0;
  List <Map<String,String>> dataOnbording = [

    {
      'text':'ESPARCIMIENTO',
      'text1':'Brindamos todos los servicios para consentir',
      'image':'lib/assets/B1.png',
    },
    {
      'text':'ESPARCIMIENTO',
      'text1':'Brindamos todos los servicios para consentir',
      'image':'lib/assets/B2.png',
    },
    {
      'text':'ESPARCIMIENTO',
      'text1':'Brindamos todos los servicios para consentir',
      'image':'lib/assets/B3.png',
    }
  ];


  

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      body: SafeArea(

          child: SizedBox(
        width: double.infinity,
        child: Column(

          children: [

            // LAS CARD

            Expanded(
              flex: 4,
              child: PageView.builder(
                
                onPageChanged: (value) {
                  setState(() {
                    pages = value;
                  });
                },
                itemCount: dataOnbording.length,

                itemBuilder: (context, index) {
                  return ContentBoarding(
                    text: dataOnbording[index]['text'], 
                    text2: dataOnbording[index]['text1'], 
                    image: dataOnbording[index]['image']);
                },
                
                
                )
                
              ),

            Expanded(
              flex: 2,
              
              child: Column(
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(dataOnbording.length, (index) => newMethod(index: index),),
                  ),

                  const Padding(padding: EdgeInsets.only(top: 90)),
                  
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: (){}, 
                      child: const Text('Siguiente',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: pages == dataOnbording.length-1 
                        ? ColorSelect.btnBackgroundBo2 
                        : ColorSelect.txtBoSubHe,
                      ),
                      ),
                  )

                ],
                
              ),
              )



            

          ],
        ),
      )),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
                  margin:  EdgeInsets.only(right:8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: pages == index ? ColorSelect.paginatorNext : ColorSelect.txtBoSubHe,
                  ),
                  duration: kThemeAnimationDuration,
                  height: 5,
                  width: pages == index ? 20 : 12,
                  
                  );
  }
}
