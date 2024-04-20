import 'package:cloud_firestore/cloud_firestore.dart';

class Schedule {
  final String title;
  final DateTime date;

  Schedule({required this.title, required this.date});
}
