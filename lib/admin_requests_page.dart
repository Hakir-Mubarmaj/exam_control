import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class AdminRequestsPage extends StatefulWidget {
  @override
  _AdminRequestsPageState createState() => _AdminRequestsPageState();
}

class _AdminRequestsPageState extends State<AdminRequestsPage> {
  List<Map<String, String>> requests = [];

  @override
  void initState() {
    super.initState();
    _loadRequests();
  }

  Future<void> _loadRequests() async {
    final prefs = await SharedPreferences.getInstance();
    final requestList = prefs.getStringList('requests') ?? [];
    setState(() {
      requests = requestList.map((request) => Map<String, String>.from(jsonDecode(request))).toList();
    });
  }

  Future<void> _completeRequest(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final requestList = prefs.getStringList('requests') ?? [];
    requestList.removeAt(index);
    await prefs.setStringList('requests', requestList);
    _loadRequests();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Request completed successfully!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certificate Requests'),
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return Card(
            child: ListTile(
              title: Text('${request['name']} - ${request['examRoll']}'),
              subtitle: Text('Semester: ${request['semester']}, Session: ${request['session']}'),
              trailing: IconButton(
                icon: Icon(Icons.check),
                onPressed: () => _completeRequest(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
