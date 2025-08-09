import 'package:flutter/material.dart';

enum StoreModelStatus {
  Ended,
  Loading,
  Error,
}

class StoreModel extends ChangeNotifier {
  StoreModelStatus _status = StoreModelStatus.Ended;
  final String _errorCode = '';
  final String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  StoreModelStatus get status => _status;

  StoreModel();

  StoreModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = StoreModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = StoreModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = StoreModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = StoreModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = StoreModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = StoreModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = StoreModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = StoreModelStatus.Ended;
    notifyListeners();
  }
}