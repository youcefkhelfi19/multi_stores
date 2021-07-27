import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:multi_stores/auth_screens/landing_screen.dart';
import 'package:multi_stores/auth_screens/login.dart';
import 'package:multi_stores/auth_screens/register.dart';

void main() {
  runApp(DevicePreview(builder: (context)=>MyApp()));

 // runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder:DevicePreview.appBuilder,
        theme: ThemeData(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          primaryColor: Colors.white
        ),
        home:LandingScreen(),
    routes: {
      RegisterScreen.routeName: (context) => RegisterScreen(),
      LoginScreen.routeName: (context) => LoginScreen()

    }
    );
  }
}


