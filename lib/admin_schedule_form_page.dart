import 'package:flutter/material.dart';

class AdminScheduleFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Form Fill-up Date'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Form Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Date'),
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
