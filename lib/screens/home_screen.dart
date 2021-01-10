import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Laravel Auth'),
      
      ),
      body: Center(child: Text('Home Sceen'),),
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
              
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(height: 10,),
                  Text('Abdulaziz Alzaabi', style: 
                  TextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text('Aziz@test.com', style: 
                  TextStyle(color: Colors.white),),

                ],
              ),
                 decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Login'),
              leading: Icon(Icons.login),
              onTap: () {},
            ),
             ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
      ),
      
    );
  }
}