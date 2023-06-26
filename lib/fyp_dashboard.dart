import 'package:flutter/material.dart';
import 'package:fyp/coverletter.dart';
import 'package:fyp/createcv.dart';
import 'package:fyp/loginclass.dart';
import 'package:fyp/profile.dart';
import 'package:fyp/profile.dart';
import 'MyApp.dart';
import 'drawer.dart';
import 'job_dashboard.dart';
import 'package:fyp/coverletter.dart';

import 'managetemp.dart';
import 'manageuser.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
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
                  MaterialPageRoute(builder: (context) => CustomDrawer()));

            },
          ),
        ],

        title: Text('Dashboard'),
      ),

      body: ListView(

        children: <Widget>[
          SizedBox(height: 20,),
          SizedBox(
            height: 40,
            width: 440,
            child:


            TextFormField(

              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(100.0),

                ),
                hintText: "search job titles, companies",
                hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                prefixIcon: Icon(Icons.search,
                  color: Colors.black,),
              ),
            ),

          ),
          SizedBox(height: 5,),
          SizedBox(
            height: 40,
            width: 440,
            child:


            TextFormField(
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 100.0),
                  borderRadius: BorderRadius.circular(100.0),

                ),
                hintText: "city, zip code",
                hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                prefixIcon: Icon(Icons.search,
                  color: Colors.black,),
              ),
            ),

          ),
          SizedBox(height: 20.0),

          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            shrinkWrap: true,
            children: <Widget>[
              DashboardCard(
                title: 'Create CV',
                icon: Icons.book,
                backgroundColor:Color(0xFF0D47A1) ,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => createcv(),
                    ),
                  );
                },
              ),

              DashboardCard(
                title: ' Cover Letter',
                icon: Icons.menu_book,
                backgroundColor: Colors.blueGrey,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => coverletter(),
                    ),
                  );
                },
              ),
              DashboardCard(
                title: 'Upload Old CV',
                icon: Icons.upload_file_rounded,
                backgroundColor: Colors.cyan,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => coverletter(),
                    ),
                  );
                },
              ),

              DashboardCard(

                title: 'Find Jobs',
                icon: Icons.find_in_page,
                backgroundColor: Colors.purpleAccent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp1(),
                    ),
                  );
                },
              ),

            ],
          ),
          SizedBox(height: 20,),


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

