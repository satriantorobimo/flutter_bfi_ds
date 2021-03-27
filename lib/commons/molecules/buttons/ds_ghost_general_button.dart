part of flutter_ds_bfi;

class DSGhostGeneralButton extends StatelessWidget {
  final String keyValue;
  final GestureTapCallback onTap;
  final String text;
  final BorderRadius borderRadiusDefault = BorderRadius.circular(6);
  final double fontSize;
  final FontWeight fontWeight;
  final DSButtonState buttonState;
  final Color color;
  final Color fontColor;
  final Color buttonColor;

  DSGhostGeneralButton(
      {this.keyValue,
      this.onTap,
      @required this.text,
      this.fontSize,
      this.fontWeight,
      this.buttonState,
      this.color,
      this.buttonColor,
      this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
      child: Material(
        borderRadius: borderRadiusDefault,
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: borderRadiusDefault,
            border: Border.all(
                color: buttonState == DSButtonState.Ghost
                    ? buttonColor
                    : DSColor.disableColor,
                width: 1.0),
            shape: BoxShape.rectangle,
          ),
          child: InkWell(
            onTap: buttonState == DSButtonState.Ghost ? onTap : null,
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
                          color: buttonState == DSButtonState.Ghost
                              ? fontColor
                              : DSColor.disableColor,
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
