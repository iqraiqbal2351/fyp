import 'package:flutter/material.dart';
import 'package:fyp/drawer.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomDrawer()));
          },
        ),

      ),
      body:  Column(
    children: [
    Container(
    height: 300,
      width: 220,
      padding: EdgeInsets.only(top: 50.0),

      child: Column(
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundImage:
            NetworkImage('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQcS0iWBuF2rdelLw50qY_Ekqy8tGNmgGvqBND-UM7sQNYmNJUS'),
          ),
          SizedBox(height: 10.0),

        ],
      ),
    ),
    ListTile(
    leading: Icon(Icons.person , size: 34,),
    title: Text('Name',style:
    TextStyle(
    fontSize: 22,
    ),),
    subtitle: Text("Iqra Iqbal",style:
    TextStyle(
      fontSize: 22,
    ),),
   trailing:IconButton(
     icon: Icon(Icons.edit),
     onPressed: () {
       // Add your onPressed logic here
     },
   )
    ),
      ListTile(
          leading: Icon(Icons.email , size: 34,),
          title: Text('gmail',style:
          TextStyle(
            fontSize: 22,
          ),),
          subtitle: Text("iqraiqbalcs@gmail",style:
          TextStyle(
            fontSize: 22,
          ),),
          trailing:IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Add your onPressed logic here
            },
          )
      ),

      ]
    ),
    );
  }
}
