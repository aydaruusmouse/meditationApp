import 'package:chatgpt/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 174, 164),
      body: Column(
        children: [
          Container(
            height: 500,
            padding: EdgeInsets.only(top: 0),
            width: 500,
            child: Image.asset('assets/Login.png', fit: BoxFit.cover,),
          ),
         Stack(
          children: [
            Container(
            width: 470,
            height: 430,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25),
                child: Text('Sing in to Continue', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),),
              ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 20),
              child: const  TextField(
                
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                 
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'Enter your email here',
                    filled: true,
                    fillColor: Color(0xffE5E5E5),
                    border: InputBorder.none
                    
                    
                  ),
                ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 20),
              child: const  TextField(
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    
                  ),
                  
                  decoration: InputDecoration(
                    
                    hintText: 'Enter your password here',
                    filled: true,
                    fillColor: Color(0xffE5E5E5),
                    prefixIcon: Icon(Icons.password_rounded),
                    border: InputBorder.none
                  ),
                
                ),
                
            ),
           const Padding(
              padding: const EdgeInsets.only(left: 220, top: 20),
              child: Text('Forget Password', textAlign: TextAlign.left,),
            ),
            Container(
              padding: EdgeInsets.only(top: 70),
              width: 310,
              child: ElevatedButton(onPressed: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()))
                // Do Something
              },
            
               child: Text('Login', style: TextStyle(fontSize: 17),),
              style: ButtonStyle(
                backgroundColor:  MaterialStatePropertyAll(Color(0xff0D132B)),
                minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)),
                             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            
              ),
              ),
            )
  
            
            ],
        
          ),
        
            )
          ],
         )
        ],
        
      ),
    );
    
  }
}