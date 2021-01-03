import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        child:
        Stack(
            alignment: Alignment.center,
            children: [
              Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Profile',
            style: TextStyle(fontSize: 20,letterSpacing: 2,color: Colors.white),),
          ),
          Expanded(
               child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width/5,
              height: MediaQuery.of(context).size.width/5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 5),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage('assets/images/jack.jpg'),
                ),
              ),
            ),
          ),
        ],
              ),
              Expanded(
                 child: Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 50),
                  child: CircleAvatar(
                backgroundColor: Colors.green,
                child: IconButton(icon: Icon(Icons.edit,color: Colors.black54,), 
                
                onPressed: (){} ,),
                  ),
                ),
              ),
            ],

      ),
      ),
    );
  }
}