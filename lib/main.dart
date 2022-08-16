import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/login_screen.dart';
import 'package:flutter_instagram_app/utils/colors.dart';
// import 'package:flutter_instagram_app/responsive/mobile_screen_layout.dart';
// import 'package:flutter_instagram_app/responsive/responsive_layout_screen.dart';
// import 'package:flutter_instagram_app/responsive/web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyBCgCvVvrx28yirBHntYQZV2-TfE2TUG-U',
        appId: '1:330693832608:web:be0b7758d39a09c0717ec5',
        messagingSenderId: '330693832608',
        projectId: 'instagram-tut-ef438',
        storageBucket: 'instagram-tut-ef438.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

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
      // home: const ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()),
      home: LoginScreen(),
    );
  }
}
