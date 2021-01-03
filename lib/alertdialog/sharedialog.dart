import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:libraryapp/models/product.dart';
//import 'package:libraryapp/reserved_page/reserved_page.dart';
//import 'package:libraryapp/reserved_page/reserved_page.dart';
//import 'package:flutter_svg/flutter_svg.dart';
  // ignore: non_constant_identifier_names
  void ShareDialog(BuildContext context) {
     bool x;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Row(children: [
           
            Expanded(
                          child: FlatButton(child: Image.asset('assets/images/fblogo.png'),
              onPressed: (){},
              ),
            ),
            Expanded(
                          child: FlatButton(child: Image.asset('assets/images/instalogo.png'),
              onPressed: (){},
              ),
            ),
            Expanded(
                          child: FlatButton(child: Image.asset('assets/images/whatsapplogo.png'),
              onPressed: (){},
              ),
            ),
            
          ]),
          content: Text('keep sharing the knwoldge.'),
          actions: <Widget>[
            Container(
              child: FlatButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  x=false;
                  //Put your code here which you want to execute on Cancel button click.
                  Navigator.of(context).pop();
                },
              ),
              color: Colors.green[900],
              //alignment: Alignment.center,
              // constraints:
              //     BoxConstraints.tightForFinite(width: 300, height: 30),
            ),
            Container(
              child: FlatButton(
                child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  //ReservedPage();
                  x=true;
                  //Put your code here which you want to execute on Cancel button click.
                  Navigator.of(context).pop();
                  print(x);
                },
              ),
              color: Colors.green[900],
              //alignment: Alignment.center,
              // constraints:
              //     BoxConstraints.tightForFinite( height: 30),
            ),
          ],
        );
      },
    );
  }
