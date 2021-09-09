part of 'select_photo_cubit.dart';

abstract class SelectPhotoState extends Equatable {
  const SelectPhotoState();

  @override
  List<Object> get props => [];
}

class SelectPhotoInitial extends SelectPhotoState {
  final String photo;

  SelectPhotoInitial({this.photo});

  @override
  List<Object> get props => [photo];
}

class PhotoSelectedState extends SelectPhotoState {
  final String photo;

  PhotoSelectedState({this.photo});

  @override
  List<Object> get props => [photo];
}
