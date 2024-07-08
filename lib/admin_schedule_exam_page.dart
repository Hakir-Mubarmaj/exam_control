import 'package:flutter/material.dart';

class AdminScheduleExamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule an Exam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Exam Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Date'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle scheduling
              },
              child: Text('Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
