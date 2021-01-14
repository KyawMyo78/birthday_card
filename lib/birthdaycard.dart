import 'package:birthday_for_elle/display.dart';
import 'package:flutter/material.dart';

class BdCard extends StatefulWidget {
  @override
  _BdCardState createState() => _BdCardState();
}

class _BdCardState extends State<BdCard> {
  String displayText = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.purple.withOpacity(0.4), BlendMode.dstATop),
          image: AssetImage("images/v_in_purple.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 500),
            ),
            Padding(
              padding: EdgeInsets.only(top: 500),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color(0xffcc74fc),
              child: Text("Click me!"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Display()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
