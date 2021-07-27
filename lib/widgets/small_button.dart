import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:multi_stores/app_colors.dart';

class SmallButton extends StatelessWidget {
  SmallButton({this.onPressed,this.text});
  final Function onPressed;
  final String  text ;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialButton(
      height: screenHeight*0.06,
      minWidth: screenWidth*0.5,
      color: Colors.white,

      onPressed: onPressed,
      child:  AutoSizeText(text,
        style: TextStyle(color: AppColors.black,fontSize: 18.0),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
