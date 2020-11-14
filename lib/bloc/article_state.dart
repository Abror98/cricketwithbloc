part of 'article_bloc.dart';

@immutable
abstract class ArticleState extends Equatable{}

class ArticleInitialState extends ArticleState {

  @override
  List<Object> get props => [];
}

class ArticleEmpty extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadingState extends ArticleState{

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadedState  extends ArticleState{
  List<Articles> articles;


  ArticleLoadedState({@required this.articles});

  @override
  List<Object> get props => [props];
}

class ArticleErrorState extends ArticleState{
  String error;

  ArticleErrorState({@required this.error});

  @override
  // TODO: implement props
  List<Object> get props => [error];
}
