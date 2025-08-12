import 'package:flutter/material.dart';

enum ProductReviewsModelStatus {
  Ended,
  Loading,
  Error,
}

class ProductReviewsModel extends ChangeNotifier {
  ProductReviewsModelStatus _status = ProductReviewsModelStatus.Ended;
  final String _errorCode = '';
  final String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  ProductReviewsModelStatus get status => _status;

  ProductReviewsModel();

  ProductReviewsModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = ProductReviewsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ProductReviewsModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = ProductReviewsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = ProductReviewsModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = ProductReviewsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = ProductReviewsModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = ProductReviewsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = ProductReviewsModelStatus.Ended;
    notifyListeners();
  }
}