import 'package:flutter/material.dart';
import 'package:fyp/loginclass.dart';
import 'package:fyp/job_dashboard.dart';
import 'package:fyp/profile.dart';

import 'help.dart';
class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 300,
            width: 220,
            padding: EdgeInsets.only(top: 50.0),

            child: Column(
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage:
                  NetworkImage('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQcS0iWBuF2rdelLw50qY_Ekqy8tGNmgGvqBND-UM7sQNYmNJUS'),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Iqra Iqbal',
                  style: TextStyle(
                    fontSize: 27.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'iqraiqbalcs@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Profile',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Account',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.help_outline , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Help',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => help()));
            },
          ),
          ListTile(
            leading: Icon(Icons.work_history_outlined , size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('My Jobs',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyApp1()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share_outlined, size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('Share',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginclass()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined , size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('Logout',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginclass()));
            },
          ),
        ],
      ),
    );
  }
}
