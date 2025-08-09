import 'package:flutter/material.dart';

enum OnboardingModelStatus {
  Ended,
  Loading,
  Error,
}

class OnboardingModel extends ChangeNotifier {
  OnboardingModelStatus _status;
  final String _errorCode;
  final String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  OnboardingModelStatus get status => _status;

  OnboardingModel()
      : _status = OnboardingModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '';

  OnboardingModel.instance()
      : _status = OnboardingModelStatus.Ended,
        _errorCode = '',
        _errorMessage = '' {
    //TODO Add code here
  }
  
  void getter() {
    _status = OnboardingModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

    _status = OnboardingModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = OnboardingModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = OnboardingModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = OnboardingModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = OnboardingModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = OnboardingModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = OnboardingModelStatus.Ended;
    notifyListeners();
  }
}