import 'package:flutter/material.dart';

enum CartModelStatus {
  Ended,
  Loading,
  Error,
}

class CartModel extends ChangeNotifier {
  CartModelStatus _status = CartModelStatus.Ended;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  CartModelStatus get status => _status;



  CartModel.instance()
      : _status = CartModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = CartModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = CartModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = CartModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CartModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = CartModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CartModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = CartModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CartModelStatus.Ended;
    notifyListeners();
  }
}