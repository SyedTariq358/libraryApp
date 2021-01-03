import 'package:flutter/material.dart';
//import 'package:libraryapp/pages/home_page.dart';
//import 'package:libraryapp/pages/signup_page.dart';
import 'package:libraryapp/widgets/widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool valuefirst=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          
          home: Scaffold(
        
         backgroundColor: Colors.green[900],
         // backgroundColor: Colors.transparent,
          body:
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/login.jpeg'),
                 fit: BoxFit.fill,
                 ),
                 ),
                 child:
                 SingleChildScrollView(
                child: Column(
                       //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                      padding: const EdgeInsets.only(top: 180.0, right: 50,left: 50),
                      child: TextField(decoration: TextFieldInputDecoration('Mobile No', Icon(Icons.mobile_screen_share_rounded)),
                        
                        ),
                ),
                Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 50,left: 50),
                      child: TextField(
                      decoration: TextFieldInputDecoration("Password", Icon(Icons.lock)),
                        )
                        
                      ),
                      CheckboxListTile( contentPadding: EdgeInsets.only(right: 50,left:60),
                        //dense: true,
                        
                        //secondary: const Icon(Icons.alarm),  
                        title: const Text('Remember me',
                        style: TextStyle(color:Colors.white),), 
                       //subtitle: Text('Ringing after 12 hours'),  
                        value: this.valuefirst,  
                        onChanged: (bool value) {  
            setState(() {  
              this.valuefirst = value;  
            });
            },),
                      Padding(
                          padding: const EdgeInsets.only(right:50,left:50),
             child: RaisedButton(onPressed: 
                            (){
                              Navigator.of(context).pushReplacementNamed('///HomePage');
                            },
                            child: Text("Login",style: TextStyle(color: Colors.white),)
                            ,
                            elevation: 3.0,
                            color: Colors.transparent,

                            
                            ),
                        ),
                       
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                     
                         Expanded(
                                                   child: Padding(
                           padding: const EdgeInsets.only(left:60.0),
                            child: Text("Do You have an account?",style: TextStyle(color:Colors.white),),
                           ),
                         ),
                         Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: FlatButton(
                               onPressed: () { 
                               Navigator.of(context).pushNamed('//SignupPage');
                                },
                               child: Text("SignUp", style: TextStyle(color:Colors.white),),
                           ),
                            ),
                         )
                       ],)
                      
                
                      ],),
                   ),
                  ),
          
      ),
    );
  }
}