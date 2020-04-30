import 'package:flutter/material.dart';
import 'package:covid19/widgets/tile.dart';

class StateScreen extends StatefulWidget {
  final response;
  StateScreen({this.response});
  static final String id = "state_screen";
  @override
  _StateScreenState createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('State Wise Data  '),
            Flexible(child: Hero(tag: 1,child: Image(image: AssetImage('images/virus.png'),height: 30.0,))),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
          child: ListView.builder(itemCount: widget.response.length,itemBuilder: (context,index){
              return ListValue(state:  widget.response[index]['state'].length > 19 ? widget.response[index]['state'].substring(0,19) : widget.response[index]['state'] ,active: widget.response[index]['active'],confirmed: widget.response[index]['confirmed'],image: widget.response[index]['statecode'].toLowerCase(),);
    },
          ),
    ),
     ] ),
    );
  }
}

