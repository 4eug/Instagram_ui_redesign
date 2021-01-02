import 'package:flutter/material.dart';
import 'package:instagram_ui_redesign/screens/feedscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Ui Redesign',
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}
