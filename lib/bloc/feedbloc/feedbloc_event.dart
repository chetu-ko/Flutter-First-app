part of '../feedbloc/feedbloc_bloc.dart';

@immutable
abstract class FeedblocEvent extends Equatable {}

class FeedblocAddEvent extends FeedblocEvent {
  final FeedModel feedModel;
  FeedblocAddEvent({@required this.feedModel});
  @override
  List<Object> get props => [feedModel];
}

class FeedblocFetchEvent extends FeedblocEvent {
  @override
  List<Object> get props => [];
}
