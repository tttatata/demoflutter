import 'package:flutter/material.dart';

enum AddressModelStatus {
  Ended,
  Loading,
  Error,
}

class AddressModel extends ChangeNotifier {
  AddressModelStatus _status = AddressModelStatus.Ended;
  final String _errorCode = '';
  final String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  AddressModelStatus get status => _status;

  AddressModel();

  AddressModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = AddressModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = AddressModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = AddressModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AddressModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = AddressModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AddressModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = AddressModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AddressModelStatus.Ended;
    notifyListeners();
  }
}