import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cricketwithbloc/data/model/model.dart';
import 'package:cricketwithbloc/data/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {

  ArticleRepository repository;


  ArticleBloc({@required this.repository})
      : assert(repository != null), super(ArticleEmpty());

  @override
  ArticleState get initialState => ArticleInitialState();



  @override
  Stream<ArticleState> mapEventToState(
    ArticleEvent event,
  ) async* {
     if(event is FetchArticlesEvent){
       yield ArticleLoadingState();
       try{
         List<Articles> articles = await repository.getArticles();
         yield ArticleLoadedState(articles: articles);
       }catch(e){
         yield ArticleErrorState(error: e.toString());
       }
     }
  }
}
