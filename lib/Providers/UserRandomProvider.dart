import 'package:apiuserrandom/Models/UserRandomModel.dart';
import 'package:apiuserrandom/Services/UserRandomServic.dart';
import 'package:flutter/material.dart';

class UserRandomProvider extends ChangeNotifier
{
  UserRandomModel?userrandommodel;
  getalldata()async
  {
    userrandommodel=await UserRandomServic.getdata();
    notifyListeners();
  }
}