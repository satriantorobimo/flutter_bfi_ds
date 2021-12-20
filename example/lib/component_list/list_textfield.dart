import 'package:flutter/material.dart';
import 'package:flutter_ds_bfi/commons/molecules/listfield/list_field_model.dart';
import 'package:flutter_ds_bfi/flutter_ds_bfi.dart';

class ListTextField extends StatefulWidget {
  @override
  _ListTextFieldState createState() => _ListTextFieldState();
}

class _ListTextFieldState extends State<ListTextField> {
  List<ListFieldModel> listFieldModel = <ListFieldModel>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Text Field'),
          centerTitle: true,
        ),
        body: DSListTextField(
          listFieldModel: listFieldModel,
          maxValue: 10,
          onChanged: () {
            for (var x in listFieldModel) {
              if (x.textEditingController.text == '12345') {
                x.textEditingController.text = 'NARUTO';
              }
            }
          },
        ));
  }
}
