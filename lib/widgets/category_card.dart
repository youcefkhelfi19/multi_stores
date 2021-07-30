import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_stores/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image ;
  CategoryCard({this.image,this.title});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            height: screenHeight*0.07,
            width: screenWidth*0.2,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
               gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                   AppColors.black,
                   AppColors.black01
                 ]

               ),
               borderRadius: BorderRadius.all(
                 Radius.elliptical(12, 16),
               ),
            ),
            child: Image.asset(image),
          ),
          Container(
            alignment: Alignment.center,
            height: screenHeight*0.05,
            width: screenWidth*0.2,
            child: AutoSizeText(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10,color: AppColors.black01),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
