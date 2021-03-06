// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:libraryapp/models/books.dart';
import 'package:libraryapp/services/services.dart';
//import 'package:parse_data/services/services.dart';
//import 'package:parse_data/model/books.dart';

class ReportPage extends StatefulWidget {
  //String url;
  //ReportPage({this.url});
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  List <Books> _books;
  bool _loading;
  String url='http://175.107.63.137/LibraryAPP/api/values/BookCategoryList?CategId=6';

  @override
  void initState(){
    super.initState();
    _loading = true;
    // ignore: unnecessary_statements
    
    Services(url: url).getBooks().then((books){
      setState(() {
        _books = books;
      _loading =false;
      });
    
    });
      }
    
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          // appBar: AppBar(
          // title: Text(_loading ?'Loading...': 'Books')
          // ),
          body: Container(
            color:Colors.white,
            child: ListView.builder(
              itemCount: _books==null? 0: _books.length,
              itemBuilder: (context, index){
              Books books = _books[index];
            return ListTile(
              contentPadding: EdgeInsets.all(10),
              leading:Container(
               
                //width: 50,
                  child: Image.network( "https://i.dlpng.com/static/png/6565478_preview.png", 
                  fit: BoxFit.cover,
                
                  ),
              ),
              title: Text(books.title),
              subtitle: Text(books.author),
                
             
              // title: //Image.network("https://i.dlpng.com/static/png/6565478_preview.png" ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children:
              //  [
              //   Image.network( "https://i.dlpng.com/static/png/6565478_preview.png", 
              //   width: 100,

              //   ),
              //   SizedBox(width:20),
              //   Expanded(
              //     child: Text(books.title)
              //     ),
              // ],),
              // subtitle: Text(books.author),
            
            );
            }),
          ),
        );
      }
    }
