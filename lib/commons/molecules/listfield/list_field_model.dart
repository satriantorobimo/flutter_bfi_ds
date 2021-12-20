import 'package:flutter/material.dart';

class ListFieldModel {
  String id;
  TextEditingController textEditingController;
  bool isEdit = true;

  ListFieldModel({this.id, this.isEdit, this.textEditingController});
}
