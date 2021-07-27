import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:multi_stores/widgets/custom_text_field.dart';
import 'package:multi_stores/widgets/password_text_field.dart';
import 'package:multi_stores/widgets/small_button.dart';

import '../app_colors.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  FocusNode passwordNode = FocusNode();
  FocusNode emailNode = FocusNode();
  FocusNode confirmPasswordNode = FocusNode();
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
              colors: [AppColors.black, AppColors.black01],
              stops: [0.25, 75])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: screenWidth,
                height: screenHeight * 0.3,
                child: AutoSizeText(
                  'Login To Your \nAccount',
                  style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: screenHeight*0.07,),

              Container(
                width: screenWidth,
                height: screenHeight * 0.4,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    CustomTextField(
                      textValueController: emailTextController,
                      node: emailNode,
                      onEditComplete: () => FocusScope.of(context).requestFocus(passwordNode),
                      hint: 'Email',
                      labelText: 'Email',
                      valueKey: 'email',
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      onValidate: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: screenHeight*0.03,),
                    PasswordTextField(
                      node: passwordNode,
                      textValueController: passwordTextController,
                      onEditComplete: () => FocusScope.of(context).requestFocus(confirmPasswordNode),
                      hint: 'Password',
                      labelText: 'Password',
                      onValidate: (value) {
                        if (value.isEmpty || value.length < 7) {
                          return 'Please enter a valid Password';
                        }
                        return null;
                      },
                    ),




                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: screenWidth,
                height: screenHeight * 0.2,
                child: SmallButton(
                  text: 'Login',
                  onPressed: (){

                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
