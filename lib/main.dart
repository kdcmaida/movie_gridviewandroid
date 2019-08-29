import 'package:flutter/material.dart';
import 'package:movie_gridview/constant/Constants.dart';
import 'package:movie_gridview/screens/HomeScreen.dart';
import 'package:movie_gridview/screens/SplashScreen.dart';

void main() =>
    runApp(MaterialApp(
        title: 'Movie GridView',
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Color(0xFF761322),
        ),
        routes: <String, WidgetBuilder>{
    SPLASH_SCREEN:(BuildContext context)=>SplashScreen(),
    HOME_SCREEN:(BuildContext context)=>HomeScreen(),
    }
    ));
