import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class StudentRequestPage extends StatefulWidget {
  @override
  _StudentRequestPageState createState() => _StudentRequestPageState();
}

class _StudentRequestPageState extends State<StudentRequestPage> {
  final _semesterController = TextEditingController();
  final _sessionController = TextEditingController();
  final _examRollController = TextEditingController();
  final _nameController = TextEditingController();

  Future<void> _saveRequest() async {
    final prefs = await SharedPreferences.getInstance();
    final request = {
      'semester': _semesterController.text,
      'session': _sessionController.text,
      'examRoll': _examRollController.text,
      'name': _nameController.text,
    };
    final requests = prefs.getStringList('requests') ?? [];
    requests.add(jsonEncode(request));
    await prefs.setStringList('requests', requests);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Request saved successfully!')),
    );
    _semesterController.clear();
    _sessionController.clear();
    _examRollController.clear();
    _nameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              
              children: [
                const Center(child: 
                Text(
                  'Apply For Certificate',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                const Text('  ',),
                TextField(
                  controller: _semesterController,
                  decoration: InputDecoration(
                    labelText: 'Semester',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _sessionController,
                  decoration: InputDecoration(
                    labelText: 'Session',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _examRollController,
                  decoration: InputDecoration(
                    labelText: 'Exam Roll',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _saveRequest,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
