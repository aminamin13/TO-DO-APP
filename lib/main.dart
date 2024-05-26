import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:to_do_app/pages/homePage.dart';

void main() async {
// initialize hive
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: Colors.yellow, centerTitle: true),
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
