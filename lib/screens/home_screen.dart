import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_stores/app_colors.dart';
import 'package:multi_stores/app_data/categories_data.dart';
import 'package:multi_stores/widgets/category_card.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categories = Categories().categories;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0.0,
        title: Text('Stores',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed:(){

              })
        ],
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight*0.1,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child:  Carousel(
              images: [
                AssetImage('images/puma.jpg'),
                AssetImage('images/cloths.jpg'),
                AssetImage('images/cars.jpg'),
                AssetImage('images/phone.jpg'),
                AssetImage('images/mk.jpg'),

              ],
              radius: Radius.circular(10.0),
              boxFit: BoxFit.fill,
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: AppColors.red1,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.black12,
              borderRadius: true,
              autoplay: true,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: false,
              overlayShadow: false,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
            ),

          ),
          Container(
            padding: EdgeInsets.only(left:10.0,bottom: 5.0),
            child: Row(
              children: [
                AutoSizeText('Stores Categories',style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
            height: screenHeight*0.12,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                 itemCount: categories.length,
                itemBuilder:(context,index){
                  return CategoryCard(
                    image: categories[index]['image'],
                    title: categories[index]['title'],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(color: AppColors.black01,),
          )
        ],
      ),
    );
  }
}
