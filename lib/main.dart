import 'package:flutter/material.dart';
import 'package:my2/login.dart';
import 'package:my2/signup.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> cameras;



void main() {
  //final cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
