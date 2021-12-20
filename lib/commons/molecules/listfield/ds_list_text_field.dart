part of flutter_ds_bfi;

class DSListTextField extends StatefulWidget {
  DSListTextField(
      {this.onPressedEdit,
      this.onPressedDelete,
      this.validator,
      this.onChanged,
      this.text,
      this.textEditingController,
      this.model,
      this.listFieldModel,
      this.maxValue: 20,
      this.isEdit: true});

  final Function onPressedEdit;
  final Function onPressedDelete;
  final Function validator;
  final Function onChanged;
  final int maxValue;
  final List<ListFieldModel> listFieldModel;
  String text;
  TextEditingController textEditingController;
  bool isEdit;
  final List<dynamic> model;

  @override
  _DSListTextFieldState createState() => _DSListTextFieldState();
}

class _DSListTextFieldState extends State<DSListTextField> {
  String _id;
  Uuid _uuid = Uuid();

  changeValue() {}

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: widget.listFieldModel.length,
            itemBuilder: (BuildContext context, int index) {
              return DSTextField(
                onPressedDelete: () async {
                  setState(() {
                    widget.listFieldModel.remove(widget.listFieldModel[index]);
                  });
                },
                onChanged: () {
                  for (var x in widget.listFieldModel) {
                    if (x.textEditingController.text.length > 0) {
                      Timer(const Duration(milliseconds: 1000), () {
                        setState(() {
                          widget.onChanged();
                        });
                      });
                    }
                  }
                },
                listFieldModel: widget.listFieldModel[index],
                text: (index + 1).toString(),
                id: widget.listFieldModel[index].id,
              );
            }),
        SizedBox(
          height: 16,
        ),
        widget.listFieldModel.length < widget.maxValue
            ? Container(
                color: Colors.white,
                height: 30.0,
                width: 150,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 2.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0567BF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _id = _uuid.v1();

                          widget.listFieldModel.add(ListFieldModel(
                              id: _id,
                              isEdit: true,
                              textEditingController: TextEditingController()));
                        });
                      },
                      child: Center(
                        child: Text(
                          'Tambah',
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                ))
            : Container(),
      ],
    );
  }
}
