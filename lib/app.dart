import 'package:flutter/material.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/shared/enum.dart';

class App extends StatelessWidget {
  final AppEnviroment appEnviroment;
  const App({super.key, required this.appEnviroment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(appEnviroment: appEnviroment),
    );
  }
}