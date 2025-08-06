import 'package:flutter/material.dart';

enum LoginModelStatus {
  Ended,
  Loading,
  Error,
}

class LoginModel extends ChangeNotifier {
  LoginModelStatus _status = LoginModelStatus.Ended;
  String _errorCode = '';
  String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  LoginModelStatus get status => _status;

  LoginModel();

  LoginModel.instance()
      : _status = LoginModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = LoginModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = LoginModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = LoginModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = LoginModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = LoginModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = LoginModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = LoginModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = LoginModelStatus.Ended;
    notifyListeners();
  }
}