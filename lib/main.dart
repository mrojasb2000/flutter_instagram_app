import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/utils/colors.dart';
import 'package:flutter_instagram_app/utils/mobile_screen_layout.dart';
import 'package:flutter_instagram_app/utils/responsive_layout_screen.dart';
import 'package:flutter_instagram_app/utils/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroudColor,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
