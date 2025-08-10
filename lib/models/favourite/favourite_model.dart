import 'package:flutter/material.dart';

enum FavouriteModelStatus {
  Ended,
  Loading,
  Error,
}

class FavouriteModel extends ChangeNotifier {
  FavouriteModelStatus _status = FavouriteModelStatus.Ended;
  String _errorCode = '';
  String _errorMessage = '';

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  FavouriteModelStatus get status => _status;

  FavouriteModel();

  FavouriteModel.instance()
      : _status = FavouriteModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = FavouriteModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = FavouriteModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = FavouriteModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = FavouriteModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = FavouriteModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = FavouriteModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = FavouriteModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = FavouriteModelStatus.Ended;
    notifyListeners();
  }
}