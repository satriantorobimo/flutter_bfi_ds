part of flutter_ds_bfi;

class DSTextAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.translationValues(-35.0, 5.0, 20.0),
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16,
            ),
            SizedBox(width: 12),
            Text('Back', style: TextStyle(color: Colors.black, fontSize: 14))
          ],
        ));
  }
}
