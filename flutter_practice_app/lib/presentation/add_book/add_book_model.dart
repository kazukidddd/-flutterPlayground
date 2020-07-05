import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterpracticeapp/domain/Book.dart';
import 'package:flutterpracticeapp/util/constant.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = '';

  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {
      throw ('タイトルを入力してください。');
    }
    Firestore.instance.collection('books').add(
      {
        'title': bookTitle,
        'createdAt': Timestamp.now(),
        'uid': Constant.uid,
      },
    );
  }

  Future updateBook(Book book) async {
    final document =
        Firestore.instance.collection('books').document(book.documentID);
    await document.updateData({
      'title': bookTitle,
      'createdAt': book.createdAt,
      'uid': Constant.uid,
    });
  }
}
