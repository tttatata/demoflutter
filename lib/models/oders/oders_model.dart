import 'package:flutter/material.dart';

enum OdersModelStatus {
  Ended,
  Loading,
  Error,
}

class OdersModel extends ChangeNotifier {
  OdersModelStatus _status =  OdersModelStatus.Ended;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  OdersModelStatus get status => _status;



  OdersModel.instance()
      : _status = OdersModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = OdersModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = OdersModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = OdersModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = OdersModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = OdersModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = OdersModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = OdersModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = OdersModelStatus.Ended;
    notifyListeners();
  }
}