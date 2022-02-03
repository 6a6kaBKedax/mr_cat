import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String titleAppBar;
  final Widget body;

  const MainLayout({
    required this.titleAppBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleAppBar),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: body,
      ),
    );
  }
}
