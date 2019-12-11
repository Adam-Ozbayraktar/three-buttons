import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Three Buttons',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 500,
              child: Image.asset(
                'assets/images/earth.png',
              ),
            ),
            FlatButton(
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Option 1',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Option 2',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Option 3',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
