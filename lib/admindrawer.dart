import 'package:flutter/material.dart';
import 'adminpanal.dart';
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
          SizedBox(height: 100,),
          ListTile(
            leading: Icon(Icons.dashboard , size: 34,color: Color(0xFF0D47A1),),
            title: Text('Dashboard',style:
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
            leading: Icon(Icons.person , size: 34,color: Color(0xFF0D47A1),),
            title: Text('View all users',style:
            TextStyle(
              fontSize: 22,
              color: Color(0xFF0D47A1),
            ),),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.account_circle , size: 34,color: Color(0xFF0D47A1),),
            title: Text('User Acounts',style:
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
            leading: Icon(Icons.password_sharp , size: 34,
              color: Color(0xFF0D47A1),),
            title: Text('Change password',style:
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
