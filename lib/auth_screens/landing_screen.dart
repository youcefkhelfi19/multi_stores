import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:multi_stores/app_colors.dart';
import 'package:multi_stores/auth_screens/login.dart';
import 'package:multi_stores/auth_screens/register.dart';
import 'package:multi_stores/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
     double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(

        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          colors: [
           AppColors.black,
           AppColors.black01

          ],
         stops: [0.25,0.75]
        )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 50.0),
                  child: AutoSizeText('Welcome ',style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 40.0,color: Colors.white),)),
            ),
            Expanded(
              flex: 2,

              child: Container(
                height: screenHeight*0.3,
                width: screenWidth*0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        buttonColor: Colors.blue[800],
                        textColor: Colors.white,
                        image: 'images/ff.png',
                        title: 'Continue with Facebook',
                        onTap: (){

                        },
                      ),
                      CustomButton(
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        image: 'images/gg.png',
                        title: 'Continue with Gmail',
                        onTap: (){

                        },
                      ),
                      CustomButton(
                        buttonColor: AppColors.green1,
                        textColor: Colors.white,
                        image: 'images/arobase.png',
                        title: 'Continue with Email',
                        onTap: (){
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                        },
                      ),

                    ],
                ),
              ),
            ),
            Expanded(child: Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText('Already have an Account ?',style: TextStyle(
                      color: Colors.white
                  ),),
                  TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child:AutoSizeText('Login',style: TextStyle(color: Colors.brown),))
                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
