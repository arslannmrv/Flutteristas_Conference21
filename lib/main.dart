import 'package:flutter/material.dart';
import 'package:flutteristas_conference/bottom_bar.dart';
import 'package:flutteristas_conference/utils/flutteristas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Flutteristas.app_name,
      theme: ThemeData(
        primaryColor: Color(Flutteristas.primary_color),//382A85
      ),
      home: BottomBarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*primaryColorDark: Color(0xff9E86BC),
accentColor: Color(0xffC1BBD7),*/