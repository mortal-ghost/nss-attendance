import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceDatabaseService {
  final CollectionReference _studentsCollection =
      FirebaseFirestore.instance.collection('students');

  Future? getStudents({ required String rollNumber }) async {
    try {
      DocumentSnapshot snapshot = await _studentsCollection.doc(rollNumber).get();

      if (snapshot.exists) {
        return snapshot.data() as Map<String, dynamic>;
      } else {
        return -1;
      }
    } catch (e) {
      return null;
    }
  }

  Future? markAttendance(
      {required int rollNumber, required String eventId}) async {
    try {
      var res = await _studentsCollection
          .doc('$rollNumber').collection('events').doc(eventId).set({
        'attended': true,
      }).whenComplete(() => "Done")
      .onError((error, stackTrace) => null);

      return res;
    } catch (e) {
      return null;
    }
  }
}
