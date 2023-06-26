import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ManageTemplateScreen(),
  ));
}
class ManageTemplateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Templates'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'CV Templates',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your actual template count or use a dynamic list
                itemBuilder: (context, index) {
                  return TemplateCard(
                    templateName: 'Template ${index + 1}',
                    onTap: () {
                      // Handle template selection or editing action
                    },
                    onDelete: () {
                      // Handle template deletion action
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle create template action
              },
              child: Text('Create Template'),
            ),
          ],
        ),
      ),
    );
  }
}

class TemplateCard extends StatelessWidget {
  final String templateName;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  TemplateCard({
    required this.templateName,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        onTap: onTap,
        leading: Icon(Icons.file_copy),
        title: Text(templateName),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
