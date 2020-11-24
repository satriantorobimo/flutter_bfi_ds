import 'package:bfi_ds/flutter_ds_bfi.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class FontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font'),
        centerTitle: true,
      ),
      body: Container(
          width: double.infinity,
          color: BgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DSText(
                  data: 'Font Family - Poppins',
                  textStyle: TextStyle(
                    fontFamily: DSFont.Poppins,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DSText(data: 'BFI Apps', textStyle: DSTextStyle.titleTextStyle),
                DSText(
                    data: 'Font - Default Text',
                    textStyle: DSTextStyle.defaultStyle),
                DSText(
                    data: 'Font - Regular Text',
                    textStyle: DSTextStyle.regularStyle)
              ],
            ),
          )),
    );
  }
}
