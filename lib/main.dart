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
  String image = 'assets/images/jupiter.png';

  void selectImg(String selection) {
    setState(() {
      image = 'assets/images/$selection.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              // color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.6,
              // width: MediaQuery.of(context).size.width * 0.5,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(
                  image,
                  scale: 0.1,
                ),
              ),
            ),
            FittedBox(
              child: Container(
                // color: Colors.green,

                // height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                child: FlatButton(
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Earth',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () => selectImg('earth'),
                ),
              ),
            ),
             FittedBox(
              child: Container(
                // color: Colors.green,

                // height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                child: FlatButton(
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Saturn',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () => selectImg('saturn'),
                ),
              ),
            ),
             FittedBox(
              child: Container(
                // color: Colors.green,

                // height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                child: FlatButton(
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Jupiter',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () => selectImg('jupiter'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
