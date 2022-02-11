part of flutter_ds_bfi;

class DSCardLabel extends StatelessWidget {
  final String label;
  final String title;
  final Widget header;
  final Widget content;
  final Widget footer;
  final double width;
  final double height;

  const DSCardLabel(
      {this.label,
      this.title,
      this.header,
      this.content,
      this.footer,
      this.width,
      this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(1, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 16.0),
                  child: DSText(
                    data: '$title',
                    textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 35,
                  width: 100,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: label == 'Pending'
                        ? DSColor.secondaryOrange
                        : label == 'Di review'
                            ? Color(0xff0567BF)
                            : label == 'Di tolak'
                                ? Color(0xffEC0000)
                                : label == 'Respons TL'
                                    ? Colors.black
                                    : DSColor.successGreen,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: DSText(
                      data: '$label',
                      textStyle:
                          const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [header, content, footer],
              ),
            )
          ],
        ));
  }
}
