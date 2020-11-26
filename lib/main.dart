import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'フラッターデモホームページ';

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フラッターデモホームページ'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: Image.asset(
                'images/owl.jpg',
              ),
              title: Text('フクロウ'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: Image.asset(
                'images/owl.jpg',
              ),
              title: Text('フクロウ'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: Image.asset(
                'images/owl.jpg',
              ),
              title: Text('フクロウ'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
