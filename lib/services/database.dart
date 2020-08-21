// import 'package:brew_crew/models/brew.dart';
import 'package:best_flutter_ui_templates/meetingroom/model/hotel_list_data.dart';
import 'package:best_flutter_ui_templates/nurse/model/hotel_list_data.dart';
import 'package:best_flutter_ui_templates/restroom/model/hotel_list_data.dart';
import 'package:best_flutter_ui_templates/showers/model/hotel_list_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference mrCollection =
      Firestore.instance.collection('meetingrooms');
  final CollectionReference rmCollection =
      Firestore.instance.collection('restrooms');
  final CollectionReference swCollection =
      Firestore.instance.collection('showers');
  final CollectionReference nrCollection =
      Firestore.instance.collection('nursingrooms');

  // Future<void> updateUserData(String sugars, String name, int strength) async {
  //   return await mrCollection.document(uid).setData({
  //     'sugars': sugars,
  //     'name': name,
  //     'strength': strength,
  //   });
  // }

  // brew list from snapshot
  List<meetingroom> _brewListFromSnapshot(QuerySnapshot snapshot) {
    print(snapshot.documents);
    return snapshot.documents.map((doc) {
      print(doc.data['title']);
      return meetingroom(
          titleTxt: doc.data['title'] ?? '',
          imagePath: doc.data['img'] ?? '',
          subTxt: doc.data['desc'] ?? '',
          avail: doc.data['availability'] ?? false);
    }).toList();
  }

  // get brews stream
  Stream<List<meetingroom>> get brews {
    print(mrCollection.snapshots());
    return mrCollection.snapshots().map(_brewListFromSnapshot);
  }

  List<restroom> _rmListFromSnapshot(QuerySnapshot snapshot) {
    print(snapshot.documents);
    return snapshot.documents.map((doc) {
      // print(doc.data['title']);
      return restroom(
          titleTxt: doc.data['id'] ?? '',
          // imagePath: doc.data['img'] ?? '',
          // subTxt: doc.data['desc'] ?? '',
          avail: doc.data['availability'] ?? false);
    }).toList();
  }

  // get brews stream
  Stream<List<restroom>> get restrooms {
    print(rmCollection.snapshots());
    return rmCollection.orderBy('id').snapshots().map(_rmListFromSnapshot);
  }

  List<shower> _swListFromSnapshot(QuerySnapshot snapshot) {
    print(snapshot.documents);
    return snapshot.documents.map((doc) {
      // print(doc.data['title']);
      return shower(
          titleTxt: doc.data['id'] ?? '',
          // imagePath: doc.data['img'] ?? '',
          // subTxt: doc.data['desc'] ?? '',
          avail: doc.data['availability'] ?? false);
    }).toList();
  }

  // get brews stream
  Stream<List<shower>> get showers {
    print(swCollection.snapshots());
    return swCollection.orderBy('id').snapshots().map(_swListFromSnapshot);
  }

  List<nurser> _nrListFromSnapshot(QuerySnapshot snapshot) {
    print(snapshot.documents);
    return snapshot.documents.map((doc) {
      // print(doc.data['title']);
      return nurser(
          titleTxt: doc.data['id'] ?? '',
          // imagePath: doc.data['img'] ?? '',
          // subTxt: doc.data['desc'] ?? '',
          avail: doc.data['availability'] ?? false);
    }).toList();
  }

  // get brews stream
  Stream<List<nurser>> get nurses {
    print(nrCollection.snapshots());
    return nrCollection.orderBy('id').snapshots().map(_nrListFromSnapshot);
  }
}
