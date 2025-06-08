import 'package:flutter/material.dart';

class PasswordProvider extends ChangeNotifier {
  bool _isVisible = true;
  bool get isVisible => _isVisible;

  bool _isVisiblePass = true;
  bool get isVisiblepss => _isVisiblePass;

  bool _isVisibleConfirmPass = true;
  bool get isVisibleConfirmPass => _isVisibleConfirmPass;

  void toggle() {
    _isVisible = !_isVisible;
    notifyListeners();
  }

  void togglePass() {
    _isVisiblePass = !_isVisiblePass;
    notifyListeners();
  }

  void toggleConfirmPass() {
    _isVisibleConfirmPass = !_isVisibleConfirmPass;
    notifyListeners();
  }
}
