import 'package:flutter/material.dart';
import 'student_request_page.dart';
import 'student_profile_page.dart';

class StudentHomePage extends StatefulWidget {
  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    StudentRequestPage(),
    StudentProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 158, 211, 255),
        title: Text('Exam Control Student App'),
      ),
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
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:const Color.fromARGB(255, 158, 211, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_page),
            label: 'Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Card(
          color: Colors.white.withOpacity(0.8),
          child: ListTile(
            title: Text('Upcoming Exam: Math 101'),
            subtitle: Text('Date: 12th July 2024'),
          ),
        ),
        Card(
          color: Colors.white.withOpacity(0.8),
          child: ListTile(
            title: Text('Form Fill-up Last Date: 5th July 2024'),
          ),
        ),
        Card(
          color: Colors.white.withOpacity(0.8),
          child: ListTile(
            title: Text('Certificates Due: None'),
          ),
        ),
        Card(
          color: Colors.white.withOpacity(0.8),
          child: ListTile(
            title: Text('Exam Routine: No routine available'),
          ),
        ),
      ],
    );
  }
}
