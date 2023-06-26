import 'package:flutter/material.dart';
import 'package:fyp/fyp_dashboard.dart';

import 'MyApp.dart';
import 'loginclass.dart';
import 'main.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        //centerTitle: true,
        title: Text("CV builder",style: TextStyle(
          fontSize: 28,
          //fontFamily: "times new roman",
          color:Colors.black,
          fontWeight: FontWeight.bold,

        ),),

        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.drag_handle_outlined))],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,



        //brightness: Brightness.light,
      ),

      body:ListView (
        padding: EdgeInsets.all(15),
        children: [

          //Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
          SizedBox(height: 20,),
          //SizedBox(width: 30,),
          Column(

            children: [
              Container(
                //padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 52,
                width: 400,
                child:Text("Create your free Cv builder "
                    "     account",style: TextStyle(
                  fontSize: 25,
                  //fontFamily: "times new roman",
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              ),

            ],
          ),

          Row(
            children: [

              Container(

                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                height: 130,
                width: 380,
                child:Text("Register with basic information, Complete you profile"
                    "and start applying for the job and make professional Resume for free!",style: TextStyle(
                  fontSize: 18,
                  //fontFamily: "times new roman",
                  color:Colors.black,
                  //fontWeight: FontWeight.bold,
                ),),
              ),

            ],
          ),

          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(

                keyboardType: TextInputType.emailAddress,
                //autofocus: false,
                initialValue: 'Full name',
                style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Full name',
                  prefixIcon:
                  //padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                  Icon(Icons.account_box,size: 40,color: Colors.black,),

                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(

                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                initialValue: 'Email-address',
                style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'E-mail address',
                  prefixIcon:
                  //padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                  Icon(Icons.person,size: 40,color: Colors.black,),

                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                ),
              ),
              SizedBox(height: 10,),

              TextFormField(

                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                initialValue: 'password',
                style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password',
                  prefixIcon:
                  //padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                  Icon(Icons.lock,size: 30,color: Colors.black,),

                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(

                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                initialValue: 'Password(Repeat)',
                style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password(Repeat)',
                  prefixIcon:
                  //padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                  Icon(Icons.lock,size: 30,color: Colors.black,),

                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              // SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    //padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    height: 80,
                    width: 380,
                    child:Text("By clicking on'Create Cv Builder Account bellow you are "
                        "agreeing to the terms and conditions of Cv Builder!",style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),


                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 500,
                //padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(

                  child: const Text('Register',style: TextStyle(
                    fontSize:20,
                    //fontFamily: "Times new roman"

                  ),),
                  onPressed: ()  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));
                  },

                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Already have an account? ",style: TextStyle(
                    fontSize: 18,
                  ),),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginclass()));
                    },
                    child: Text('Login now',

                      style: TextStyle(
                        //fontFamily: 'Times New Roman',
                        color: Colors.blue,
                        fontSize: 20,
                      ),),
                  ),


                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
