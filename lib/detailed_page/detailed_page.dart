import 'package:flutter/material.dart';
import 'package:libraryapp/alertdialog/reserved_dialog.dart';
import 'package:libraryapp/alertdialog/sharedialog.dart';
//import 'package:libraryapp/reserved_page/reserved_page.dart';
import 'package:libraryapp/models/product.dart';
//import 'package:libraryapp/models/item.dart';

class DetailedPage extends StatelessWidget {
  final Product product;

  const DetailedPage({Key key, this.product}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Detailed Page"),
      ),
      body: SingleChildScrollView(
              child: Stack(

                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(children:[
                    Text(product.title,style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 20,
                    ),
                    ),
                    Center(
                   child: Image.asset(product.image),
                    ),
                    Text("Price: \$${product.price}"),
                    Row(children: [
                      IconButton(icon: Icon(Icons.favorite), onPressed: (){
                      DialogFunction(context);
                      }
                      
                      ),
                      IconButton(icon: Icon(Icons.share), onPressed: (){
                        ShareDialog(context);

                      }
                      ),
                      IconButton(icon: Icon(Icons.store_sharp), onPressed: null)
                    ],)
                  ]
                  ),
  
                Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Decription:\n\n" +product.description),
                ),
                    ),
                  ),
              ],),
      )
    );
  }
}