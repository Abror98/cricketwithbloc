
import 'package:cricketwithbloc/data/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget{
  Articles articles;

  ArticleDetailPage({this.articles});

  @override
  Widget build(BuildContext context) {


     return Scaffold(
       appBar: AppBar(
         title: Text('Cricket'),
       ),
       body: ListView(
         padding: EdgeInsets.all(5.0),
         children: [
           Hero(tag: articles.urlToImage,
           child: Image.network(articles.urlToImage),),

           Container(
             alignment: Alignment.center,
             padding: EdgeInsets.all(10.0),
             child: Text(
               articles.title,
               style: TextStyle(fontSize: 20.0),
             ),
           ),
           Container(
             alignment: Alignment.topRight,
             margin: EdgeInsets.all(5.0),
             child: Text(articles.publishedAt),
           ),
           Text(articles.content)

         ],
       ),
     );
  }

}