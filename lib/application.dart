import 'package:flutter/material.dart';
import 'package:mr_cat/ui/home_page/home_page.dart';


class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.amber),
        ),

    );
  }
}
