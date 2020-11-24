import 'package:flutter_ds_bfi/flutter_ds_bfi.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color"),
      ),
      body: Container(
          color: BgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildTileColor(
                    "Primary Color", DSColor.primaryBlue, Colors.white),
                SizedBox(
                  height: 10,
                ),
                buildTileColor("BG Color", DSColor.bgColor, Colors.black),
                SizedBox(
                  height: 10,
                ),
                buildTileColor(
                    "Success Color", DSColor.successGreen, Colors.white),
                SizedBox(
                  height: 10,
                ),
                buildTileColor(
                    "Secondary Color", DSColor.secondaryOrange, Colors.white),
                SizedBox(
                  height: 10,
                ),
                buildTileColor(
                    "Disable Color", DSColor.disableColor, Colors.white),
              ],
            ),
          )),
    );
  }

  Widget buildTileColor(String text, Color color, Color colorText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: <Widget>[
            Container(
              color: color,
              height: 40,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(color: colorText),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
