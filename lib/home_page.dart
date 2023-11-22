import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_project/shared/enum.dart';


class HomePage extends StatefulWidget {
  final AppEnviroment appEnviroment;
  const HomePage({super.key, required this.appEnviroment});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          // width: 200,
          // height: 200,
          color: Colors.amber,
          child: Center(child: Text(widget.appEnviroment.name)),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          executeTestMethod();
        }));
  }



  void executeTestMethod() async {
    DocumentReference doc = FirebaseFirestore.instance.doc("project/info");
    var snap = await doc.get();
    String title = snap.get("title");
    print(title);
  }


}