
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/services.dart';
import './homescreen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  

  @override
  Widget build(BuildContext context) {
     
    return  MaterialApp(
       
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff0D132B),
      body: Column(
        
        children: [
          // WelcomeText
            Container(
              height: 600,
              width: 500,
              padding: EdgeInsets.only(top: 50),
              child: Image.asset('assets/Home.png', fit: BoxFit.cover,),
            ),
          // Login TextFeild
            Container(
              padding: EdgeInsets.only(top: 20),
              width: 280,
               child: Column(
                children:[
                  Text("Mediatation", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(height: 20,),
                  Text('Meditation is like a gym in which you develop the powerful mental muscles of calm and insight', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.all(10),
                  child: GestureDetector(

                    
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: 350,
              
                      child: Column(
                        children: [
                          ElevatedButton(onPressed: ()=>{
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()))
                          }, 
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0xffDF7D70)),
                            minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)),
                             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                          ),
                          
                          child: Text('Continue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                       
                                  ]),
                    ),
                  ),
                  
                  ),
                    Column(
                      children: [
                                                 ElevatedButton(onPressed: ()=>{
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()))
                          }, 
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0xff0D132B)),
                            
                          ),
                          
                        child:  Text('Skip', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                       
                      ],
                    ),
                    
                ],
                
               ),
            )

          // password

          // Buttom
        ],
      ),
      ),
      
    );
  
  }
}