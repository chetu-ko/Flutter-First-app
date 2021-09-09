import 'package:myapp/model/feed_model.dart';

class Validator {
  validateForm(FeedModel feedModel) {
    String message;
    if (feedModel.name == '') {
      message = "Enter Name";
    } else if (feedModel.description == '') {
      message = "Enter Description";
    } else if (feedModel.imageUrl == 'Not Selected') {
      message = "Please Select image";
    } else {
      message = "Success";
    }
    return message;
  }
}
