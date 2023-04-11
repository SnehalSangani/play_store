import 'package:flutter/material.dart';
import 'package:play_store/screen/full_screen/view/full_screen.dart';
import 'package:play_store/screen/home/provider/home_provider.dart';
import 'package:play_store/screen/home/tab_Screen.dart';
import 'package:play_store/screen/home/view/home_screen.dart';
import 'package:play_store/screen/top_Chart/view/top_schart.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => tab(),
          //'home':(context) => home(),
          'top':(context) => top(),
          'full':(context) => fullscreen(),
        },
      ),
    )
  );
}