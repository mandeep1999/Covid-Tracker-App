import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:covid19/services/networking.dart';
import 'package:covid19/screens/main_screen.dart';

class LoadingScreen extends StatefulWidget {
  static final String id = "loading_screen";
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Networking networking = new Networking();
  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData() async{
    var response = await networking.getResponse();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MainScreen(
        response: response,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
