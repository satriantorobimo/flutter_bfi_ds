part of flutter_ds_bfi;

class DSNudedButton extends StatelessWidget {
  final String keyValue;
  final GestureTapCallback onTap;
  final String text;
  final DSButtonState buttonState;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  DSNudedButton(
      {this.keyValue,
      this.onTap,
      this.text,
      this.buttonState,
      this.fontWeight,
      this.fontSize,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue ?? ''),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          child: InkWell(
            onTap: buttonState == DSButtonState.Active ? onTap : null,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      text,
                      style: TextStyle(
                          fontFamily: DSFont.Poppins,
                          color: buttonState == DSButtonState.Active
                              ? color
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
