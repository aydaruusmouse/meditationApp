import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Meditate extends StatefulWidget {
  const Meditate({super.key});

  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Text('Relaxing Music'),
          Row(
             children:[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset('assets/rec6.png'),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text('The Cozy Cobin', style: TextStyle(color: Colors.white, fontSize: 14),),
                         SizedBox(width: 20,),
                         Icon(Icons.play_circle_fill,
                         color: Colors.red,
                         size: 30,
                      
                         ),
                      ],
                         ),
                     SizedBox(
                      width: 150,
                      child: Text('17 mins', style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset('assets/rec7.png'),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text('The Cozy Cobin', style: TextStyle(color: Colors.white, fontSize: 14),),
                         SizedBox(width: 20,),
                         Icon(Icons.play_circle_fill,
                         color: Colors.red,
                         size: 30,
                      
                         ),
                      ],
                         ),
                     SizedBox(
                      width: 150,
                      child: Text('17 mins', style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ),
             ],
             
             
          ),
          Row(
              children:[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                        Image.asset('assets/rec8.png'),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('The Cozy Cobin', style: TextStyle(color: Colors.white, fontSize: 14),),
                           SizedBox(width: 20,),
                           Icon(Icons.play_circle_fill,
                           color: Colors.red,
                           size: 30,
                        
                           ),
                        ],
                           ),
                           SizedBox(
                      width: 150,
                      child: Text('17 mins', style: TextStyle(color: Colors.white),)
                           )
                    ],
                    
                  ),
                  
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                        Image.asset('assets/rec9.png'),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('The Cozy Cobin', style: TextStyle(color: Colors.white, fontSize: 14),),
                           SizedBox(width: 20,),
                           Icon(Icons.play_circle_fill,
                           color: Colors.red,
                           size: 30,
                        
                           ),
                        ],
                           ),
                           SizedBox(
                      width: 150,
                      child: Text('17 mins', style: TextStyle(color: Colors.white),)
                           )
                    ],
                  ),
                ),
              ]
          ),
         
        ],),
      ),
      backgroundColor: Color(0xff1F1F1F),
    );
  }
}