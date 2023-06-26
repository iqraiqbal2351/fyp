// import 'dart:async';
// import 'package:flutter/material.dart';
//
// import 'loginclass.dart';
//
//
// class splash extends StatelessWidget {
//   const splash({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 2),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//             loginclass()
//             )
//                 (context) =>
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 800,
//       child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8p0P78gOkImfwNKoWsEKrUSpLAcLJnVa4ew&usqp=CAU"),
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appBar: AppBar(title:Text("GeeksForGeeks")),
//       body: Center(
//           child:Text("Home page",textScaleFactor: 2,)
//       ),
//     );
//   }
// }