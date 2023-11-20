import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          executeTestMethod();
        }));
  }



  void executeTestMethod() {

  }


}