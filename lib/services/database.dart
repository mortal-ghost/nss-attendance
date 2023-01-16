import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceDatabaseService {
  final CollectionReference eventsCollection =
      FirebaseFirestore.instance.collection('events');

  Future? markAttendance(
      {required int rollNumber, required String event}) async {
    try {
      return await eventsCollection
          .doc(event)
          .collection('attendance')
          .doc('$rollNumber')
          .set({
        'attendance': true,
      });
    } catch (e) {
      return null;
    }
  }
}
