import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future signupUserDetails(Map<String, dynamic> userInfoMap, String id)async{
    return await FirebaseFirestore.instance
        .collection('NewUser')
        .doc(id)
        .set(userInfoMap);
  }

  getEmployeeDetails() async {

    return await FirebaseFirestore.instance.collection('Employee').snapshots();

  }
}
