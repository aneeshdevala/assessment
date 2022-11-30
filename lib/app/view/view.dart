import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 35,
          leading: const CircleAvatar(),
          actions: const [
            Icon(Icons.menu),
            Icon(Icons.notification_add_outlined),
            Icon(Icons.search)
          ],
        ),
        body: Container(),
      ),
    );
  }
}
