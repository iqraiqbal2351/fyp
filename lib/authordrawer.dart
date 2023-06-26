import 'package:flutter/material.dart';
import 'adminpanal.dart';
import 'help.dart';
class authordrawer extends StatefulWidget {
  const authordrawer({Key? key}) : super(key: key);

  @override
  State<authordrawer> createState() => _authordrawerState();
}

class _authordrawerState extends State<authordrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100,),
          ListTile(
            leading: Icon(Icons.auto_awesome_motion_rounded , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Author Section',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => dash()));
            },
          ),
          ListTile(
            leading: Icon(Icons.add_box , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Create Job Listing',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.notifications , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Job Applications',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => help()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person , size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('User Account',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MyApp1()));
            },
          ),
          ListTile(
            leading: Icon(Icons.change_circle_outlined, size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('Change password',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => loginclass()));
            },
          ),
          ListTile(
            leading: Icon(Icons.menu, size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('My Saved Jobs',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => loginclass()));
            },
          ),
          ListTile(
            leading: Icon(Icons.delete, size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('Delete Account',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => AdminDashboardScreen()));
            },
          ),
        ],
      ),
    );
  }
}

