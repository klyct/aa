import 'package:flutter/material.dart';

class FlagsProvider with ChangeNotifier{
  bool _updatePosts=false;

  getupdateposts()=> _updatePosts;
  setupdateposts(){
    this._updatePosts = !this._updatePosts;
    notifyListeners();
  }
}