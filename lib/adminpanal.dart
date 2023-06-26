import 'package:flutter/material.dart';

import 'admindrawer.dart';
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
                  MaterialPageRoute(builder: (context) => CustomDrawer()));

            },
          ),
        ],

          title: Text('Dashboard'),
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
                  title: 'Users',
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
                // 50: Color(0xFFEFEBE9),
                // 100: Color(0xFFD7CCC8),
                // 200: Color(0xFFBCAAA4),
                // 300: Color(0xFFA1887F),
                // 400: Color(0xFF8D6E63),
                // 500: Color(_brownPrimaryValue),
                // 600: Color(0xFF6D4C41),
                // 700: Color(0xFF5D4037),
                // 800: Color(0xFF4E342E),
                // 900: Color(0xFF3E2723),
                DashboardCard(
                  title: ' Total Jobs',
                  icon: Icons.edit,
                  backgroundColor: Colors.black,
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
                  title: 'Author',
                  icon: Icons.person,
                  backgroundColor: Colors.cyan,
                  onTap: () {
                    // Handle settings action
                  },
                ),

                DashboardCard(

                  title: 'Company Catagories',
                  icon: Icons.settings,
                  backgroundColor: Colors.red,
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
      Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Iqra Iqbal',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'iqraiqbalcs@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Company',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'ABC Corporation',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Action',style: TextStyle(
                    fontSize: 18,
                  ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Action to be performed
                    },
                    child: Text('View Company',
                      style: TextStyle(
                      fontSize: 16,),
                  ),
                ),
                ),
              ],
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
