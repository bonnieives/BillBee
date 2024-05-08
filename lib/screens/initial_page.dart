import 'package:flutter/material.dart';
import 'package:bill_bee/styles/button_styles.dart';
import 'package:bill_bee/styles/text_styles.dart';
import 'package:bill_bee/components/buttons.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double marginPercent = 0.15;
    double widthPercent = 0.74;
    double marginBetweenButtons = 0.05;
    double buttonGetStartedHeight = 0.08;
    double buttonLoginHeight = 0.05;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg_5.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CustomStadiumButton(
                        label: 'Get Started',
                        onPressed: () {print('You pressed GET STARTED');},
                        width: screenWidth * widthPercent,
                        height: screenHeight * buttonGetStartedHeight,
                        textStyle: btnBoldStyle,
                        backgroundColor: btnBackgroundColor1,),
                      SizedBox(height: screenHeight * marginBetweenButtons),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: screenHeight * marginPercent),
                        child: CustomStadiumButton(
                          label: 'Have An Account? Login',
                          onPressed: () {Navigator.pushNamed(context, '/login');},
                          width: screenWidth * widthPercent,
                          height: screenHeight * buttonLoginHeight,
                          textStyle: btnLightStyle,
                          backgroundColor: btnBackgroundColor2,),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
