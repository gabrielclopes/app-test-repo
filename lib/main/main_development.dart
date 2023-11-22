import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_project/app.dart';
import 'package:test_project/shared/enum.dart';
import '../firebase/firebase_options_dev.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App(appEnviroment: AppEnviroment.development,));
}