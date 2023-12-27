import 'package:cloud_firestore/cloud_firestore.dart';

class HearFormData {
  String? hearingTypeFS;
  String? judgeName;
  String? vanue;

  HearFormData({this.hearingTypeFS, this.judgeName, this.vanue});

  static Future<void> addHearing(HearFormData hearing) async {
    CollectionReference db =
        FirebaseFirestore.instance.collection("HearingFormData");
    Map<String, dynamic> data = {
      "HearingType": hearing.hearingTypeFS,
      "JudgeName": hearing.judgeName,
      "Vanue": hearing.vanue,
    };
    await db.add(data);
  }
}
