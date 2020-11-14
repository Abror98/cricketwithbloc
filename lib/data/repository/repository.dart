

import 'dart:convert';

import 'package:cricketwithbloc/data/model/model.dart';
import 'package:cricketwithbloc/res/strings.dart';
import 'package:http/http.dart' as http;

abstract class ArticleRepository{
  Future<List<Articles>> getArticles();
}

class ArticleRepositoryImpl implements ArticleRepository{



  @override
  Future<List<Articles>> getArticles() async{
     var response = await http.get(AppStrings.articleUrl);
     if(response.statusCode == 200){
       var data = json.decode(response.body);
       List<Articles> articles = ApiResultModel.fromJson(data).articles;
       return articles;
     } else{
       throw Exception();
     }
  }


}