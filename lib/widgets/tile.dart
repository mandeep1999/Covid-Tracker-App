import 'package:flutter/material.dart';
import 'package:covid19/widgets/basic.dart';

class ListValue extends StatelessWidget {
  final String state;
  final String active;
  final String confirmed;
  final String image;
  ListValue({this.state,this.confirmed,this.active,this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(11.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(width: 1.0,color: Colors.white),
      ),
      child: Row(
        children: <Widget>[
          Expanded(child : Container(
            child: Image.asset('images/$image.jpg'),
            padding: EdgeInsets.only(top: 15.0,left: 15.0,bottom: 15.0,right: 8.0),
          ),flex: 3,),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Basic(txt: 'State',val: state,),
                Basic(txt: 'Confirmed',val: confirmed),
                Basic(txt: 'Active',val: active,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
