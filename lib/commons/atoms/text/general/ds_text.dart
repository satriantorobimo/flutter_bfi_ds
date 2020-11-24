part of flutter_ds_bfi;

class DSText extends StatelessWidget {
  final String data;
  final String keyValue;
  final TextAlign textAlign;
  final TextStyle textStyle;
  final int maxLines;
  final TextOverflow textOverflow;

  DSText(
      {this.data,
      this.keyValue,
      this.textStyle,
      this.textAlign,
      this.maxLines,
      this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? 'null',
      key: Key(keyValue ?? ''),
      textAlign: textAlign,
      style: textStyle,
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}
