import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:libraryapp/widgets/widget.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController NameControl = TextEditingController();
  TextEditingController PassControl = TextEditingController();
  TextEditingController OrgControl = TextEditingController();
  TextEditingController PhoneControl = TextEditingController();
  TextEditingController EmailControl = TextEditingController();
  var lastID;
  var firstID;
  var membercode;
  bool valuefirst=false;
  void init(){
  super.initState();
  //getdata();
  }
   getdata() async {
  var url = 'http://175.107.63.137/LibraryAPP/api/values/SingleList';
  //int IncOne=1;

  // Await the http get response, then decode the json-formatted response.
  
  var response = await http.get(url,
  headers: {"Accept":"Application/json"}
  );
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
  
    //var incOne = 1;
    //print(jsonResponse.message);
   lastID = ('$jsonResponse' .substring(6,15));
   firstID = ('$jsonResponse' .substring(5,6));
   // print(jsonResponse.message);
    
    //print(firstID);
    //print(lastID);
   //var a='10';

  lastID=(int.parse(lastID)+1).toString();
  //print(lastID);
  membercode=(firstID+(lastID));
    print('$jsonResponse');
  } else {
    print('${response.statusCode}');
    
  }
  
}

postdata() async {
  var url = 'http://175.107.63.137/LibraryAPP/api/values/SignUp';
  
  //print(mes)
  Map<String, String> body = {
    'MemberCode': membercode.toString(),
    'Name': NameControl.text,
    'Email': EmailControl.text,
    'Organization':OrgControl.text,
    'Mobile': PhoneControl.text,
    'Password': PassControl.text,
  };


  Response r = await post(
    url,
    body: body,
  );
}
  
  

//  print("Response =+$r");
//   Await the http get response, then decode the json-formatted response.

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          
          home: Scaffold(
        
         backgroundColor: Colors.green[900],
         // backgroundColor: Colors.transparent,
          body:
                  SafeArea(
                  child: Container(
                  height: double.infinity,
                  width: double.infinity,
                 decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/signup_word.jpeg'),
                 fit: BoxFit.fill,
                 ),
                 ),
                 child:
                 SingleChildScrollView(
                child: Center(
               child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Padding(
                       padding: const EdgeInsets.only(top: 170, right: 50,left: 50),
                       child: TextField(
                         controller: NameControl,
                         decoration: TextFieldInputDecoration('Name', Icon(Icons.supervised_user_circle_sharp)),
                         
                         ),
               ),
                Padding(
                       padding: const EdgeInsets.only(top: 10, right: 50,left: 50),
                       child: TextField(
                         controller: PassControl,
                         decoration: TextFieldInputDecoration('Password', Icon(Icons.lock)),
                         
                         ),
               ),
               
               Padding(
                       padding: const EdgeInsets.only(top: 10, right: 50,left: 50),
                       child: TextField(
                         controller: OrgControl,
                         decoration: TextFieldInputDecoration('Organization', Icon(Icons.home_filled)),
                         
                         ),
               ),
               Padding(
                       padding: const EdgeInsets.only(top: 10, right: 50,left: 50),
                       child: TextField(
                         controller: PhoneControl,
                         decoration: TextFieldInputDecoration('Phone', Icon(Icons.phone)),
                         
                         ),
               ),
               Padding(
                       padding: const EdgeInsets.only(top: 10.0, right: 50,left: 50),
                       child: TextField(
                         controller: EmailControl,
                       decoration: TextFieldInputDecoration("Email", Icon(Icons.email_sharp)),
                         ),
                         
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
                              //  getdata();
                                //postdata();
                             },
                             child: Text("Create an account.",style: TextStyle(color: Colors.white),)
                             ,
                             elevation: 3.0,
                             color: Colors.transparent,

                             
                             ),
                         ),
                      
                       
               
                       ],),
                        ),
                     ),
                    ),
                  ),
          
      ),
    );
  }
 }
