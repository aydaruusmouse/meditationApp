import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myCurrentIndex= 0;
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
       body: Container(
        padding: EdgeInsets.only(top: 50, left: 15),
         child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 0, ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(right: 220),
                 child: Text('Recommanded.', 
              style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
             
              SizedBox(height: 10,),
              ClipRRect(
                   borderRadius: BorderRadius.circular(15),
                   child:  Image.asset('assets/showcase.png', fit: BoxFit.cover, height: 250, width: 400,) 
              ,
              ),
             
                       ],
            ), 
          ),
          
          Container(
            
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 180),
                  child: Text('Daily Meditation.', style: TextStyle(fontSize: 25, color: Colors.white),),
                ),
                SizedBox(height: 10,),
                Row(

                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                     Image.asset('assets/Rectangle 5.png', width: 200,),
                     Image.asset('assets/Rectangle 9.png', width: 200,)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
              child: Column(
                children: [
                Container(
                padding: EdgeInsets.only(right: 270, bottom: 20),
                child: Text('Courses.', style: TextStyle(fontSize: 25, color: Colors.white),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [
                  Image.asset('assets/rect4.png', ),
                  SizedBox(width: 80),
                  Column(
                    
                    children:const [
                       Text('Meditation', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight:FontWeight.bold),),
                       Text("8 Seasons", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),),

                    ],
                  ),
                  
                 
                  SizedBox(width: 80),
                  
                const  SizedBox(
                        
                       child: Icon(
                          size: 40,
                          Icons.play_circle_fill,
                          color: Colors.red,
                        ),
                        
                      )
                ],
                
                ),
                SizedBox(
                 height: 7,
                 width: 200,// Set the desired height of the progress bar
                 child: LinearProgressIndicator(
                 value: 0.8,
                 valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                 backgroundColor: Colors.grey[300],
                 semanticsLabel: 'Loading',
                 semanticsValue: '50%',
  ),
),

              ]),
          )
         ]),
         
       ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: myCurrentIndex,
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
          onTap: (myCurrent){
            setState(() {
              myCurrentIndex= myCurrent;
            });
          },
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