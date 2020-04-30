import 'package:covid19/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:covid19/screens/loading_screen.dart';
import 'package:covid19/screens/state_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          MainScreen.id : (context) => MainScreen(),
          LoadingScreen.id : (context) => LoadingScreen(),
          StateScreen.id : (context) => StateScreen(),
        },
        initialRoute: LoadingScreen.id,
        );

  }
}

