import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'select_photo_state.dart';

class SelectPhotoCubit extends Cubit<SelectPhotoState> {
  SelectPhotoCubit() : super(SelectPhotoInitial(photo: "Not Selected"));

  void photoSelected(String photo) => emit(PhotoSelectedState(photo: photo));
}
