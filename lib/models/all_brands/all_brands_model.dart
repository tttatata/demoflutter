import 'package:flutter/material.dart';

enum AllBrandsModelStatus {
  Ended,
  Loading,
  Error,
}

class AllBrandsModel extends ChangeNotifier {
  AllBrandsModelStatus _status =   AllBrandsModelStatus.Ended;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  AllBrandsModelStatus get status => _status;



  AllBrandsModel.instance()
      : _status = AllBrandsModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = AllBrandsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = AllBrandsModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = AllBrandsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AllBrandsModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = AllBrandsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AllBrandsModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = AllBrandsModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = AllBrandsModelStatus.Ended;
    notifyListeners();
  }
}