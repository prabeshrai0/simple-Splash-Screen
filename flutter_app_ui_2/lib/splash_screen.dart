import'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:Image.asset('assets/images/shop.png'),
            ),
            Padding(padding: EdgeInsets.only(top:20)),
            Text(
              'Hello Splash Screen',
              style: TextStyle(fontSize: 20.0,color:Colors.white),
            ),
Padding(padding: EdgeInsets.only(top:20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )

          ],
        ),

      )
    );
  }
}
