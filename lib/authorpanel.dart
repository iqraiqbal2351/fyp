import 'package:flutter/material.dart';

import 'admindrawer.dart';
import 'authordrawer.dart';
import 'managetemp.dart';
import 'manageuser.dart';

void main() {
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: AdminDashboardScreen(),
  ));
}

class AdminDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu), // Replace "Icons.search" with the desired icon
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => authordrawer()));

            },
          ),
        ],

        title: Text('Author Section'),
      ),

      body: ListView(

        children: <Widget>[
          SizedBox(height: 100.0),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            shrinkWrap: true,
            children: <Widget>[
              DashboardCard(
                title: 'My post',
                icon: Icons.people,
                backgroundColor:Color(0xFF0D47A1) ,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminPanelScreen(),
                    ),
                  );
                },
              ),

              DashboardCard(
                title: ' Live post',
                icon: Icons.edit,
                backgroundColor: Colors.cyan,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManageTemplateScreen(),
                    ),
                  );
                },
              ),
              DashboardCard(
                title: 'Total Applications',
                icon: Icons.person,
                backgroundColor: Colors.redAccent,
                onTap: () {
                  // Handle settings action
                },
              ),



            ],
          ),
          SizedBox(height: 20,),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:Text(
            'Manage Company Details',
            style: TextStyle(fontSize: 20.0),
          ),
          ),
        ],

      ),
          SizedBox(height: 20,),
          Row(
            children: [

                Container(
                  width: 410,
                  color: Colors.lightBlue,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'For Job Listing, You Have to Add Company Details',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

            ],
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Action for the first button
              },
              child: Text('Edit Company'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Action for the second button
              },
              child: Text('Delete Company'),
            ),
          ),
        ],
      ),
        ],
      ),

    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final VoidCallback onTap;

  DashboardCard({
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 70,
              color: Colors.white,
            ),
            SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
