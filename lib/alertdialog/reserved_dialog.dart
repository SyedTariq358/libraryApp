 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:libraryapp/models/product.dart';
  // ignore: non_constant_identifier_names
 
//final Product product; 
void DialogFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Row(children: [
            Expanded(
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ]),
          content: Column(children:[
            Text("Do you want to reserve this")
          ]),
          actions: <Widget>[
            Container(
              child: FlatButton(
                child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
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
                  "CANCEL",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  //Put your code here which you want to execute on Cancel button click.
                  Navigator.of(context).pop();
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
