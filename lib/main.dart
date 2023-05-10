import 'package:clone/homee/Tabbar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homee/home.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: twitterTabbarViev(),
      theme: ThemeData.light().copyWith(
        appBarTheme: 
          AppBarTheme( color: Theme.of(context).scaffoldBackgroundColor ),
          textTheme: Theme.of(context).textTheme.copyWith(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
          tabBarTheme: 
            TabBarTheme(
               labelColor: CupertinoColors.activeBlue,
              unselectedLabelColor: CupertinoColors.inactiveGray 
              )
          ),
        

    );
  }
  
  twitterTabbarViev() {}
}
 
