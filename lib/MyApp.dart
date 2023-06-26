import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fyp/loginclass.dart';
import 'package:fyp/splash_screen.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Builder',

      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const loginclass())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm1A32sg2d8y5KeCK6wD6oY-86oD78_JOysQ&usqp=CAU", fit: BoxFit.contain));
  }
}