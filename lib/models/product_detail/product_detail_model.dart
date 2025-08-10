import 'package:flutter/material.dart';

enum ProductDetailModelStatus {
  Ended,
  Loading,
  Error,
}

class ProductDetailModel extends ChangeNotifier {
  ProductDetailModelStatus _status = ProductDetailModelStatus.Ended;
  final String _errorCode = '';
  final String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  ProductDetailModelStatus get status => _status;

  ProductDetailModel();

  ProductDetailModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = ProductDetailModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = ProductDetailModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = ProductDetailModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = ProductDetailModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = ProductDetailModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = ProductDetailModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = ProductDetailModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = ProductDetailModelStatus.Ended;
    notifyListeners();
  }
}