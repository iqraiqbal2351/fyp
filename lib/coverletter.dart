import 'package:flutter/material.dart';
import 'package:fyp/fyp_dashboard.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: coverletter(),
      debugShowCheckedModeBanner: false,

    );
  }
}
// 50: Color(0xFFE3F2FD),
// 100: Color(0xFFBBDEFB),
// 200: Color(0xFF90CAF9),
// 300: Color(0xFF64B5F6),
// 400: Color(0xFF42A5F5),
// 500: Color(_bluePrimaryValue),
// 600: Color(0xFF1E88E5),
// 700: Color(0xFF1976D2),
// 800: Color(0xFF1565C0),
// 900: Color(0xFF0D47A1),

class coverletter extends StatefulWidget {
  const coverletter({Key? key}) : super(key: key);

  @override
  State<coverletter> createState() => _coverletterState();
}

class _coverletterState extends State<coverletter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF0D47A1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios,size: 30,),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));
                  },
                ),
                Container(

                    child: Row(

                      children: <Widget>[

                        IconButton(
                          icon: Icon(Icons.menu,size: 35,),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Cover-letter',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
                SizedBox(width: 10.0),
                Text('Templates',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize:30.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight:Radius.circular(50.0), ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child:Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem('assets/images/WhatsApp Image 2023-05-09 at 6.53.28 PM.jpeg', 'Templte1', ),
                          _buildFoodItem('assets/images/WhatsApp Image 2023-05-09 at 6.55.43 PM.jpeg', 'Spring bowl',),
                          _buildFoodItem('assets/images/WhatsApp Image 2023-05-09 at 6.56.03 PM.jpeg', 'Avocado bowl', ),
                          _buildFoodItem('assets/images/WhatsApp Image 2023-05-09 at 6.56.21 PM.jpeg', 'Berry bowl', ),
                          _buildFoodItem('assets/images/WhatsApp Image 2023-05-09 at 6.56.40 PM.jpeg', 'Berry bowl', ),
                        ]
                        )
                    )
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildFoodItem(String imgPath, String foodName, ) {
  return Padding(
      padding: EdgeInsets.only(left: 1.0, right: 10.0, bottom: 20.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Row(
                  children: [
                    Hero(
                        tag: imgPath,
                        child: Image(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover,
                            height:120.0,
                            width:100.0
                        )
                    ),
                    SizedBox(width: 20.0),

                    Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 21.0,
                            fontWeight: FontWeight.w400,
                        )
                    ),


                  ]
              )
          ),
          IconButton(
              icon: Icon(Icons.edit,size: 35,),
              color: Color(0xFF0D47A1),

              onPressed: () {}
          )
        ],
      )
  );
}
