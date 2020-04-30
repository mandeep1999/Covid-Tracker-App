import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Basic extends StatelessWidget {
  final String txt;
  final String val;
  Basic({this.txt,this.val});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(txt + ' : ' ,style: TextStyle(fontSize: 20.0,), overflow: TextOverflow.fade,),
          Flexible(child: Text(val,style: TextStyle(color: Colors.red,fontSize: 20.0),overflow: TextOverflow.fade,))
        ],
      ),
    );
  }
}
