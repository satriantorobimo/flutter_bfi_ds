part of flutter_ds_bfi;

class DSFilledGeneralButton extends StatelessWidget {
  final String keyValue;
  final GestureTapCallback onTap;
  final String text;
  final BorderRadius borderRadiusDefault = BorderRadius.circular(8);
  final double fontSize;
  final FontWeight fontWeight;
  final DSButtonState buttonState;
  final Color color;
  final Color buttonColor;

  DSFilledGeneralButton(
      {this.keyValue,
      this.onTap,
      @required this.text,
      this.fontSize,
      this.fontWeight,
      this.buttonState,
      this.color,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
      child: Material(
        borderRadius: borderRadiusDefault,
        child: Ink(
          decoration: BoxDecoration(
            color: buttonState == DSButtonState.Active
                ? buttonColor
                : buttonState == DSButtonState.Tapable
                    ? color
                    : DSColor.disableColor,
            borderRadius: borderRadiusDefault,
            shape: BoxShape.rectangle,
          ),
          child: InkWell(
            onTap: buttonState == DSButtonState.Active ||
                    buttonState == DSButtonState.Tapable
                ? onTap
                : null,
            borderRadius: borderRadiusDefault,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      text,
                      style: TextStyle(
                          fontFamily: DSFont.Poppins,
                          color: Colors.white,
                          fontSize: fontSize,
                          fontWeight: fontWeight),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
