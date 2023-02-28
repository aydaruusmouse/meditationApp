import 'package:chatgpt/screens/Courses.dart';
import 'package:chatgpt/screens/HomePage.dart';
import 'package:chatgpt/screens/meditation.dart';
import 'package:chatgpt/screens/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static  List<Widget> pages= [
    HomePage(),
    Meditate(),
    Courses(),
    Profile()
  ];

  void onItemClicked(int index){
       setState(() {
         _selectedIndex = index;
       });
      
  }
  
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xf0D132B),
          actions: const[
          Padding(padding: EdgeInsets.only(right: 10),
             child: CircleAvatar(foregroundImage: AssetImage('assets/user.png'),),
          )
          ],
        ),
        body: Center(
          child: IndexedStack(
            index: _selectedIndex,
            children: pages,
          ),
        ),
      
        bottomNavigationBar: BottomNavigationBar(
          
          
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          iconSize: 35,
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list,),
              
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dark_mode_rounded,),
              label: '',
            ),
            BottomNavigationBarItem(icon: 
            Icon(Icons.person, ),
            label: ''
            ),
            
          ],
          onTap: onItemClicked,
        ),

       backgroundColor: Color(0xf0D132B),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff0D132B)),
                accountName: Text('Aido'), accountEmail: Text('Aido@icloud.com'),
                currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('assets/user.png'),),
                ),
                ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.account_balance_rounded),
                  
                ),
                ListTile(
                  title: Text('EditProfile'),
                  leading: Icon(Icons.edit_attributes_outlined),
                  
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout_outlined),
                  
                ),
                
                ],
          ),
          backgroundColor: Color(0xffDF7D70),
          
          
        ),
      )
    );
  }
}