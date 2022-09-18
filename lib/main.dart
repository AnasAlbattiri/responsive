import 'package:flutter/material.dart';
import 'package:responsive/desktop.dart';
import 'package:responsive/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints)
    {
      if(constraints.minWidth.toInt() <= 560 )
      {
        return MobileScreen();
      }
      return DesktopScreen();
    },
    ),
    );
  }
}
