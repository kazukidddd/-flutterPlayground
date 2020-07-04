import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../domain/Book.dart';

class BookListModel extends ChangeNotifier {
  List<Book> books = [];

  Future fetchBooks() async {
    final document =
        await Firestore.instance.collection('books').getDocuments();

    List<Book> books = document.documents
        .map((doc) => Book(
              doc['title'],
              doc['createdAt'],
            ))
        .toList();
    books.sort((a, b) => a.createdAt.compareTo(b.createdAt));
    this.books = books;
    notifyListeners();
  }
}
