import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
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
          ListView(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child :
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2022/04/03/15/32/flower-7109258_640.jpg'),
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sumaia Jahan Jyoti',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8), // Adds space between the text and the icon
                  Icon(
                    Icons.edit, // The "edit" icon represents a pen for editing
                    size: 24.0, // Set the desired size for the icon
                  ),
                ],
              ),
              Center(child: 
              Text('23 Year Old Student'),),
              
              // General Section
              Text(
                '  General',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Full name',
                        style: TextStyle(
                          color: Colors.black, // This makes the title color a bit faded
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Sumaia Jahan',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black, // This ensures the subtitle has a prominent color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Blood group',
                        style: TextStyle(
                          color: Colors.black, // This makes the title color a bit faded
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'AB+',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black, // This ensures the subtitle has a prominent color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black, // This makes the title color a bit faded
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'SumaiaJahan@gmail.com',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black, // This ensures the subtitle has a prominent color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Phone',
                        style: TextStyle(
                          color: Colors.black, // This makes the title color a bit faded
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '01312345673',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black, // This ensures the subtitle has a prominent color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Additional Section
              Text(
                '  Additional',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Jyoti, a Computer Science and Engineering student at the University of Barisal. I have a passion for programming and have experience in several programming languages, including C, C++, Java, JavaScript, HTML, CSS, PHP, SQL, and Python. He enjoy solving problems and he is constantly honing his skills in web development.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
