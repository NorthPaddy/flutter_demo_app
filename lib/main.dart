import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool favorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("フラッターデモホームページ"),
        actions: [
          Icon(Icons.adb_outlined),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            // Image.network(
            //   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            // ),
            Image.asset(
              'images/owl.jpg',
              height: 250,
              width: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: 'ボタンを押した回数は '),
                      TextSpan(
                          text: '$_counter',
                          style: Theme.of(context).textTheme.headline4),
                      TextSpan(text: ' 回'),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Icon(
                    favorite == true ? Icons.favorite : Icons.favorite_border,
                    color: favorite == true ? Colors.red : Colors.black38,
                  ),
                  onPressed: () {
                    setState(() {
                      if (favorite != true) {
                        //ハートが押されたときにfavoriteにtrueを代入している
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                ),
                RaisedButton(
                  child: Text('ボタン'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: _incrementCounter,
                ),
              ],
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NextPage()),
          );
        },
      ),
    );
  }
}
