import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:libraryapp/models/books.dart';
import 'package:libraryapp/pages/drawer.dart';
import 'package:libraryapp/reserved_page/reserved_page.dart';
import 'package:libraryapp/tab_pages/academy_publication.dart';
//import 'package:libraryapp/tab_pages/biography_books.dart';
import 'package:libraryapp/tab_pages/general_page.dart';
import 'package:libraryapp/tab_pages/journal_page.dart';
import 'package:libraryapp/tab_pages/oriental_page.dart';
//import 'package:libraryapp/tab_pages/genre_page.dart';
import 'package:libraryapp/tab_pages/papers.dart';
import 'package:libraryapp/tab_pages/reference.dart';
import 'package:libraryapp/tab_pages/report_page.dart';
import 'package:libraryapp/tab_pages/research_page.dart';
import 'package:libraryapp/tab_pages/serial_page.dart';
import 'package:libraryapp/tab_pages/udefined.dart';
import 'package:libraryapp/widgets/widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

List bookpages=[UndefinedPage(),ReferencePage(),PaperPage(),AcademyPublication(),GeneralPage(),ReportPage(),SerialPage(),OrientalPage(),ResearchPage(),JournalPage(),];
String urll;
List booksid=[];
List cattitle=[];
List catid=[];
List <Books> books;

 TabController tabController;


  @override
  void initState(){
    GetCategory();
    super.initState();
 //tabController = TabController(length: cattitle.length, vsync: this);
    
  }

  @override
  void dispose() {
    //GetCategory();
    tabController.dispose();
    super.dispose();
  }

  Future <List> GetCategory() async{
    var url =  'http://175.107.63.137/LibraryAPP/api/values/BookCategory';
    
    var response = await http.get(url,
    headers:  {"Accept": "application/json"},

    );
    setState(
      (){
      booksid = json.decode(response.body);
      //String cattitle;
      //booksid.add(convertedData);
       for(var i=0; i<booksid.length; i++)
       {
         //cattitle.addAll(booksid[i]['title'.toString()]);
        cattitle.add(booksid[i]['title']);
        catid.add(booksid[i]['id']);
      // print(cattitle[i]);

       }
       print(catid);
       print(cattitle);

      
      
      
    }
     
    
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:DefaultTabController(
        initialIndex: 0,
        length:  cattitle.length, child:  Scaffold(
        
          drawer: Drawerr(),
          endDrawer: ReservedPage(),
          resizeToAvoidBottomPadding: false,
        appBar: PreferredSize(
                  preferredSize: Size.fromHeight(160),
                  child: AppBar(
                    backgroundColor: Colors.green[900],
                    actions: [
                    Builder(
                    builder: (context) => IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                  ),
                  ],
          flexibleSpace:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left:20),
              
               ),
               Expanded(child: Padding(
                 padding: const EdgeInsets.all(40.0),
                 child: TextField(decoration: TextFieldInputDecoration('Search', Icon(Icons.search)),),
               ))
            ],
            ),
          bottom: TabBar(
          //indicatorPadding:EdgeInsets.all(10),
          labelColor: Colors.white,
          labelStyle: TextStyle(color: Colors.black),
         // physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
       //   controller: tabController,
          isScrollable: true,
          
            tabs:
            // [
            //   Text("data"),
            //   Text("data"),
            //   Text("data"),
            //   Text("data"),
            //   Text("data"),

            //   Text("data"),
            //   Text("data"),
            //   Text("data"),
            //   Text("data"),
            //   Text("data"),
              
            // ],
            tabMaker(),

            
         
          
          indicatorColor: Colors.white,
          ),
          ),
        ),
       body:  TabBarView(
       // controller: tabController,
         children:
               tabBarmaker(),
        
      
      ),
      ),
    )
    );
    
  }
 tabMaker(){
  List<Tab> tabs = List();
  for (var i = 0; i < cattitle.length; i++) {
    tabs.add(Tab(text: cattitle[i]));
 };
 return tabs;
}
  tabBarmaker(){
  List<Tab> tabs = List();
  for (var i = 0; i < catid.length; i++) {
    tabs.add(Tab(child:bookpages[i]));
 };
 return tabs;
  }
}
  
