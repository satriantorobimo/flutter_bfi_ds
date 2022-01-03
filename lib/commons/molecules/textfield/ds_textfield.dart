part of flutter_ds_bfi;

class DSCustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final bool readOnly;
  final VoidCallback onTap;
  final VoidCallback onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String errorText;
  final String hintText;
  final Widget suffix;
  final Widget prefix;
  final int maxLength;

  DSCustomTextField(
      {Key key,
      this.controller,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obsecure = false,
      this.onTap,
      this.isMulti = false,
      this.readOnly = false,
      this.autofocus = false,
      this.errorText,
      @required this.hintText,
      this.suffix,
      this.prefix,
      this.enabled = true,
      this.onEditingCompleted,
      this.onChanged,
      this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
          style: const TextStyle(fontSize: 14.0, color: Colors.black),
          autofocus: autofocus,
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obsecure,
          readOnly: readOnly,
          onChanged: onChanged,
          maxLength: maxLength ?? 100,
          onEditingComplete: onEditingCompleted,
          onTap: onTap,
          decoration: InputDecoration(
              errorText: errorText,
              enabled: enabled,
              suffix: suffix,
              prefix: prefix,
              hintText: hintText,
              counterText: '',
              isDense: true,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFcbcbcb)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFcbcbcb)),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFcbcbcb)),
              ),
              hintStyle: TextStyle(fontSize: 14.0, color: Color(0xFFcbcbcb))),
          validator: validator),
    );
  }
}
