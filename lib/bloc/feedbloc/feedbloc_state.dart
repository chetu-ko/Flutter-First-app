part of 'feedbloc_bloc.dart';

@immutable
abstract class FeedblocState {}

class FeedblocInitial extends FeedblocState {
  List<Object> get props => [];
}

class FeedblocLoadingState extends FeedblocState {}

class FeedblocSuccessState extends FeedblocState {}

class FeedblocLoadedState extends FeedblocState {
  final List<FeedModel> listfeedmodel;
  FeedblocLoadedState({this.listfeedmodel});

  List<Object> get props => [listfeedmodel];
}
