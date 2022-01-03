import 'package:flutter/material.dart';
import 'package:flutter_ds_bfi/flutter_ds_bfi.dart';

class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _namaPelaporCtrl = TextEditingController();
    bool readOnlyNamePelapor = false;
    validateEmpty(String value) {
      return 'null';
    }

    return Scaffold(
      body: DSCustomTextField(
        hintText: 'Jane Doe',
        controller: _namaPelaporCtrl,
        keyboardType: TextInputType.text,
        validator: validateEmpty,
        readOnly: readOnlyNamePelapor,
        obsecure: true,
      ),
    );
  }
}
