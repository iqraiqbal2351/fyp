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
      home: createcv(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class createcv extends StatefulWidget {
  const createcv({Key? key}) : super(key: key);

  @override
  State<createcv> createState() => _createcvState();
}

class _createcvState extends State<createcv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF0D47A1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios,size: 30,),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));
                  }
                  ,
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
                Text('CV',
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
                        fontSize: 30.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),topRight: Radius.circular(75.0)),
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

                          _buildFoodItem('assets/images/temp1.png', 'Crisp Blue', ),
                          _buildFoodItem('assets/images/temp1-img.png', 'Cascade Blue', ),
                          _buildFoodItem('assets/images/temp2.png', 'Cubic Blue', ),
                          _buildFoodItem('assets/images/temp2-img.png', 'Crisp Blue-image',),
                          _buildFoodItem('assets/images/temp3.png', 'Cascade Blue-image', ),
                          _buildFoodItem('assets/images/temp3-img.png', 'Cubic Blue-image', ),
                          _buildFoodItem('assets/images/temp6.png', 'Crisp light-blue', ),
                          _buildFoodItem('assets/images/temp7.png', 'Cascade light-blue', ),
                          _buildFoodItem('assets/images/temp8.png', 'Cubic light-Blue', ),
                          _buildFoodItem('assets/images/temp9.png', 'Crisp light-blue',),
                          _buildFoodItem('assets/images/temp-4.png', 'Cascade light-blue'),
                          _buildFoodItem('assets/images/temp-5.png', 'Cubic light-Blue', ),
                          //grey
                          _buildFoodItem('assets/images/grey2.png', 'Crisp Grey', ),
                          _buildFoodItem('assets/images/grey3.png', 'Cascade Grey',),
                          _buildFoodItem('assets/images/grey4.png', 'Cubic Grey', ),
                          _buildFoodItem('assets/images/grey5.png', 'Crisp', ),
                          _buildFoodItem('assets/images/grey6.png', 'Cascade', ),
                          //brown
                          _buildFoodItem('assets/images/brown1.png', 'Crisp brown-simple', ),
                          _buildFoodItem('assets/images/brown2.png', 'Cascade brown',),
                          _buildFoodItem('assets/images/brown3.png', 'Cubic brown', ),
                          _buildFoodItem('assets/images/brown4.png', 'Crisp brown', ),
                          _buildFoodItem('assets/images/brown5.png', 'Cascade brown', ),
                          _buildFoodItem('assets/images/brown6.png', 'Cubic-brown-simple', ),

                          //green
                          _buildFoodItem('assets/images/green1.png', 'Crisp green', ),
                          _buildFoodItem('assets/images/green2.png', 'Cascade green',),
                          _buildFoodItem('assets/images/green3.png', 'Cubic green', ),
                          _buildFoodItem('assets/images/green4.png', 'Crisp green2', ),
                          _buildFoodItem('assets/images/green5.png', 'Cascade green2', ),
                          _buildFoodItem('assets/images/green6.png', 'Cubic green2', ),
                          //

                          _buildFoodItem('assets/images/orange1.png', 'crisp orange', ),
                          _buildFoodItem('assets/images/orange2.png', 'Cascade orange',),
                          _buildFoodItem('assets/images/orange3.png', 'Cubic orange', ),
                          _buildFoodItem('assets/images/orange4.png', 'crisp orange-2', ),
                          _buildFoodItem('assets/images/orange5.png', 'Cascade orange2', ),
                          _buildFoodItem('assets/images/orange6.png', 'Cubic orange2', ),



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
                        SizedBox(width: 10.0),

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
