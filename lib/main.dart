import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pnn/Constants/const.dart';
import 'package:pnn/Screens/direct_message_screen.dart';
import 'package:pnn/Screens/group_message_screen.dart';
import 'package:pnn/Screens/main_screen.dart';
import 'package:pnn/Screens/splash_screen.dart';

void main() {
  runApp(PNN());
}

class PNN extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'PNN',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        MAIN_SCREEN: (BuildContext context) => MainScreen(),
        DIRECT_MESSAGE_SCREEN: (BuildContext context) => DirectMessageScreen(),
        GROUP_MESSAGE_SCREEN: (BuildContext context) => GroupMessageScreen(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
