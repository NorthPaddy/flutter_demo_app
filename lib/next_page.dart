import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int _counter = 0;
  bool favorite;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フクロウ 詳細ページ'),
      ),
      body: Container(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text( 'フクロウ',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )
              ),
            ),
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
                      TextSpan(text: 'いいね！した回数は '),
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
                    color: favorite == true ? Colors.red : Colors.grey,
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
                RaisedButton.icon(
                  icon: Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: Colors.white,
                  ),
                  label: Text('いいね！'),
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
    );
  }
}
