import 'package:flutter/material.dart';

enum SignupModelStatus {
  Ended,
  Loading,
  Error,
}

class SignupModel extends ChangeNotifier {
  SignupModelStatus _status = SignupModelStatus.Ended;
  final String _errorCode = '';
  final String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  SignupModelStatus get status => _status;

  SignupModel();

  SignupModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = SignupModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = SignupModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = SignupModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = SignupModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = SignupModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = SignupModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = SignupModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = SignupModelStatus.Ended;
    notifyListeners();
  }
}