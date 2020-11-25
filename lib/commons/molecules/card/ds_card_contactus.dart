part of flutter_ds_bfi;

class DSCardContactUs extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const DSCardContactUs({this.title, this.subtitle, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 1.5, // has the effect of softening the shadow
            spreadRadius: 1.5, // has the effect of extending the shadow
            offset: Offset(
              2.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
      child: Center(
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 32,
              )
            ],
          ),
          title: DSText(
            data: title,
            textStyle: TextStyle(color: DSColor.primaryBlue, fontSize: 14),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: DSText(
              data: subtitle,
              textStyle: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward_ios,
                color: DSColor.primaryBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}