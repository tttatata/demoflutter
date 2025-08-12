import 'package:flutter/material.dart';

enum CheckoutModelStatus {
  Ended,
  Loading,
  Error,
}

class CheckoutModel extends ChangeNotifier {
  CheckoutModelStatus _status= CheckoutModelStatus.Ended;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  CheckoutModelStatus get status => _status;



  CheckoutModel.instance()
      : _status =  CheckoutModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = CheckoutModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = CheckoutModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = CheckoutModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CheckoutModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = CheckoutModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CheckoutModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = CheckoutModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CheckoutModelStatus.Ended;
    notifyListeners();
  }
}