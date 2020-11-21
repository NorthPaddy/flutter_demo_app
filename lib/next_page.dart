import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次のページ"),
        actions: [
          Icon(Icons.adb_outlined),
        ],
      ),
      body: Container(
        color: Colors.red,
        child: Center(
            child: Column(mainAxisSize: MainAxisSize.min,
                children: [
                  Text('遷移しましたっ！',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
        ])),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
