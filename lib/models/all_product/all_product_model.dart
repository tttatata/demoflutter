import 'package:flutter/material.dart';

enum AllProductModelStatus {
  Ended,
  Loading,
  Error,
}

class AllProductModel extends ChangeNotifier {
  AllProductModelStatus _status= AllProductModelStatus.Ended;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  AllProductModelStatus get status => _status;

  AllProductModel.instance()
      : _status = AllProductModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = AllProductModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = AllProductModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = AllProductModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AllProductModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = AllProductModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AllProductModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = AllProductModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AllProductModelStatus.Ended;
    notifyListeners();
  }
}