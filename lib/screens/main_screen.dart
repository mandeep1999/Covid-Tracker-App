import 'package:covid19/screens/state_screen.dart';
import 'package:flutter/material.dart';
import 'package:covid19/widgets/basic.dart';
import 'package:flutter/cupertino.dart';
import 'package:covid19/services/networking.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainScreen extends StatefulWidget {
  final response;
  MainScreen({this.response});
  static final String id = "main_screen";
   @override
  _MainScreenState createState() => _MainScreenState();
}
Networking networking = new Networking();
class _MainScreenState extends State<MainScreen> {
  var active,recovered,confirmed;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.response);
  }
  void updateUI(dynamic response) {
    setState(() {
      if (response == null) {
        active = 0;
        confirmed = 0;
        recovered = 0;
      }
      active = response[0]['active'];
      recovered = response[0]['recovered'];
      confirmed = response[0]['confirmed'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          iconTheme: IconThemeData(opacity: 0),
          title: Center(child: Text('COVID 19          ',style: TextStyle(color: Colors.red),)),
        ),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: FlatButton(child: Hero(child: Image.asset('images/virus.png',width: 200.0,height: 200.0,),tag: 1,)
                  ,onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return StateScreen(
                          response : widget.response,
                        );
                      }));
                    },
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TypewriterAnimatedTextKit(
                      speed: Duration(milliseconds: 150),
                      text: [
                        "Click on Image to get details",
                        "Thank You for using the App",
                        "By Mandeep Singh"
                      ],
                      textStyle: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Agne"
                      ),
                        alignment: AlignmentDirectional.topStart,
                    ),
                  ),
                ),
                Basic(txt: 'Confirmed cases in India',val: confirmed.toString()),
                Basic(txt: 'Active cases in India',val: active.toString()),
                Basic(txt: 'Recovered cases in India',val: recovered.toString()),
              ],
            ),
          ),

      ),
    );
  }
}
