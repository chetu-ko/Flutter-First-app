import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/model/feed_model.dart';
import 'package:myapp/repository/feed_repo.dart';

part 'feedbloc_event.dart';
part 'feedbloc_state.dart';

class FeedblocBloc extends Bloc<FeedblocEvent, FeedblocState> {
  FeedblocBloc() : super(FeedblocInitial());

  @override
  Stream<FeedblocState> mapEventToState(
    FeedblocEvent event,
  ) async* {
    if (event is FeedblocAddEvent) {
      yield FeedblocLoadingState();
      print("Bloc Add Event");
      await FeedRepository().addFeedDetails(event.feedModel);
      print("Bloc Add Event Success");
      yield FeedblocSuccessState();
    } else if (event is FeedblocFetchEvent) {
      yield* _mapFeedBlocFetchTostate();
    }
  }

  Stream<FeedblocState> _mapFeedBlocFetchTostate() async* {
    yield FeedblocLoadingState();
    print("Bloc Fetch Event");
    List<FeedModel> listfeedmodel = await FeedRepository().fetchFeed();
    print("Bloc Fectch Event Succes");
    yield FeedblocLoadedState(listfeedmodel: listfeedmodel);
  }
}
