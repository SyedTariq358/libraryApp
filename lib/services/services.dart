import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:libraryapp/models/books.dart';
import 'dart:async';


class Services{
   String url;
   // ignore: missing_return
  Services({this.url});

   Future<List<Books>>getBooks() async {

    try{
        final response =await http.get(url);
        if(response.statusCode==200)
        {
        final List<Books> books = booksFromJson(response.body);
        return books;
        }else{
          return List<Books>();
        }
    }catch(e)
    {
      return List<Books>();
    }
  }

}