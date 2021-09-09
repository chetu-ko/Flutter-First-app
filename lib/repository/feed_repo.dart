import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:myapp/model/feed_model.dart';

class FeedRepository {
  CollectionReference feedData =
      FirebaseFirestore.instance.collection("FeedData");

  Future<void> addFeedDetails(FeedModel feedModel) async {
    print(" Adding detaild");
    String imagename = feedModel.name.toString();
    final file = File('${feedModel.imageUrl}');
    TaskSnapshot snapshot = await FirebaseStorage.instance
        .ref()
        .child("images/$imagename")
        .putFile(file);
    var url = await snapshot.ref.getDownloadURL();
    feedModel.imageUrl = url.toString();
    await feedData.add(feedModel.toJosn());
  }

  Future<List<FeedModel>> fetchFeed() async {
    List<FeedModel> listfeedModel;
    print('fetch data');
    await feedData.get().then((value) {
      List<DocumentSnapshot> documentSnapshot = value.docs;
      List<Map<String, dynamic>> xyz = [];
      documentSnapshot.forEach((element) {
        xyz.add(element.data());
      });
      listfeedModel =
          xyz.map<FeedModel>((element) => FeedModel.fromJson(element)).toList();
    });
    return listfeedModel;
  }
}
