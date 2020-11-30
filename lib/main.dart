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
  var imageLists = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'https://cdn.pixabay.com/photo/2017/06/09/09/39/adler-2386314__340.jpg',
    'https://cdn.pixabay.com/photo/2014/05/20/21/20/bird-349026__340.jpg',
    'https://cdn.pixabay.com/photo/2015/10/12/14/53/kingfisher-983944__340.jpg',
  ];
  var imageTitles = [
    'フクロウ',
    '鷲',
    'ひよこ',
    'カワセミ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フラッターデモホームページ'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: imageLists.length,
          itemBuilder: (context, int index) {
            return ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: Image.network(
                '${imageLists[index]}',
                height: 80,
                width: 80,
              ),
              title: Text(
                '${imageTitles[index]}',
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
