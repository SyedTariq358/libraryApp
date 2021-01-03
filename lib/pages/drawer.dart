import 'package:flutter/material.dart';
import 'package:libraryapp/pages/profile_page.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
        child:
       Drawer(
         
          child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
        DrawerHeader(
          
          child: ProfilePage(),
          decoration: BoxDecoration(
            color: Colors.green[900],
          ),
        ),
        
        ListTile(
          leading: Icon(Icons.edit_outlined),
          trailing: Text("Edit Personal Details"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        
        ListTile(
          //contentPadding: EdgeInsets.only(left: 10,right: 20),
          leading: Icon(Icons.book_online),
          trailing: Text("Issued Books"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        
        ListTile(
          //contentPadding: EdgeInsets.only(left: 10,right: 20),
          leading: Icon(Icons.favorite),
          trailing: Text("Reserved Books"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          //contentPadding: EdgeInsets.only(left: 10,right: 20),
          leading: Icon(Icons.logout),
          trailing: Text("LogOut"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),

        ListTile(
          //contentPadding: EdgeInsets.only(left: 10,right: 20),
          leading: Icon(Icons.contact_page),
          trailing: Text("Contact Us"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        FlatButton(child: Text("Term and Privacy Policy"),
        onPressed: (){

        },
        )
        
    ],
          ),
       ),
    
        );

      
      
    
  }
  
}