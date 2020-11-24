import 'package:flutter_ds_bfi/flutter_ds_bfi.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        centerTitle: true,
      ),
      body: Container(
          color: BgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DSText(
                  data: 'Filled Button',
                  textStyle: TextStyle(
                    fontFamily: DSFont.Poppins,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DSFilledButton(
                  text: "Active Button",
                  fontSize: 16,
                  buttonState: DSButtonState.Active,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                DSFilledButton(
                  text: "Disabled Button",
                  buttonState: DSButtonState.Disable,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                DSFilledButton(
                  text: "Tapable Button",
                  buttonState: DSButtonState.Tapable,
                  color: DSColor.disableColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                DSText(
                  data: 'Nude Button',
                  textStyle: TextStyle(
                    fontFamily: DSFont.Poppins,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DSNudedButton(
                  text: 'Active Button',
                  buttonState: DSButtonState.Active,
                  color: DSColor.primaryBlue,
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                DSNudedButton(
                  text: 'Disabled Button',
                  buttonState: DSButtonState.Disable,
                  color: DSColor.primaryBlue,
                  onTap: () {},
                )
              ],
            ),
          )),
    );
  }
}
