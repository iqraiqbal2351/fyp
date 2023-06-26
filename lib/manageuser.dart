import 'package:flutter/material.dart';

class AdminPanelScreen extends StatelessWidget {
  final int itemCount = 20; // Number of user items to display

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
      ),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return _buildUserCard('User $index');
        },
      ),
    );
  }

  Widget _buildUserCard(String username) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(username),
        onTap: () {
          // Handle user card tap event
          // You can navigate to a detailed user profile screen or perform other actions
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AdminPanelScreen(),
  ));
}
