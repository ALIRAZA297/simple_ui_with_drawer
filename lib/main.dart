import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instent Services'),
          backgroundColor: Colors.deepPurple,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
                accountEmail: Text("aliraza3331549@gmail.com"),
                accountName: Text("Ali Raza"),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage("image/IMG_0874.jpg"),
                ),
              ),
              ListTile(
                title: Text('Message'),
                leading: Icon(Icons.message),
                onTap: () {},
              ),
              ListTile(
                title: Text('Active Order'),
                leading: Icon(Icons.notifications_active_sharp),
                onTap: () {},
              ),
              ListTile(
                title: Text('Feedback'),
                leading: Icon(Icons.feedback),
                onTap: () {},
              ),
              ListTile(
                title: Text('About us'),
                leading: Icon(Icons.group),
                onTap: () {},
              ),
              ListTile(
                title: Text('Rate us'),
                leading: Icon(Icons.rate_review),
                onTap: () {},
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic,),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups,color: Colors.white,),
              label: 'About Us',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded,color: Colors.white,),
              label: 'All Services',
            ),
          ],
          backgroundColor: Colors.deepPurple,
          onTap: (value) => (){},
        ),
      ),
    );
  }
}

