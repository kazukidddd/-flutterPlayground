import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  Book(this.title, this.createdAt);

  String title;
  Timestamp createdAt;
}
