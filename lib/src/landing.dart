import 'showcase.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xffef473a),
              Color(0xffcb2d3e),
            ],
          ),
        ),
        child: content(context),
      ),
    );
  }

  Container content(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Missed It \n",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          Text(
            "Things the new genertion will never experience\n\n",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          RaisedButton(
              color: Colors.white,
              child: Text("Start"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Showcase();
                  }),
                );
              })
        ],
      ),
    );
  }
}
