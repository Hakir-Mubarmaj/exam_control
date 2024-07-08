import 'package:flutter/material.dart';

class StudentRequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Certificate'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Session'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Exam Roll'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
