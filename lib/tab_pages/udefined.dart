// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:libraryapp/models/books.dart';
import 'package:libraryapp/services/services.dart';
//import 'package:parse_data/services/services.dart';
//import 'package:parse_data/model/books.dart';

class UndefinedPage extends StatefulWidget {
  //String url;
  //UndefinedPage({this.url});
  @override
  _UndefinedPageState createState() => _UndefinedPageState();
}

class _UndefinedPageState extends State<UndefinedPage> {
  List <Books> _books;
  bool _loading;
  String url='http://175.107.63.137/LibraryAPP/api/values/BookCategoryList?CategId=12';

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
