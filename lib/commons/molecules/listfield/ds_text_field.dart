part of flutter_ds_bfi;

class DSTextField extends StatelessWidget {
  DSTextField(
      {this.onPressedEdit,
      this.onPressedDelete,
      this.validator,
      this.onChanged,
      this.text,
      this.listFieldModel,
      this.id,
      this.isEdit: true});

  final Function onPressedEdit;
  final Function onPressedDelete;
  final Function validator;
  final VoidCallback onChanged;

  final String text;
  final ListFieldModel listFieldModel;
  final bool isEdit;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.only(left: 4.0),
          child: TextFormField(
            enableInteractiveSelection: false,
            style: const TextStyle(fontSize: 14.0, color: Colors.black),
            controller: listFieldModel.textEditingController,
            onChanged: (value) {
              onChanged();
            },
            decoration: InputDecoration(
                enabled: listFieldModel.isEdit,
                counterText: '',
                hintText: 'NIK / Nama',
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
            validator: validator,
          ),
        ),
        IconButton(
            icon: Icon(
              Icons.edit_outlined,
              color: Colors.black,
            ),
            onPressed: onPressedEdit),
        IconButton(
            icon: Icon(
              Icons.delete_outlined,
              color: Colors.red,
            ),
            onPressed: onPressedDelete),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
