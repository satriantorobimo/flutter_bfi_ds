part of flutter_ds_bfi;

class DSCardContactUs extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String subtitle2;

  const DSCardContactUs(
      {this.title, this.subtitle, this.image, this.subtitle2});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFABABAB).withOpacity(0.2),
            blurRadius: 1.5, // has the effect of softening the shadow
            spreadRadius: 1.5, // has the effect of extending the shadow
            offset: Offset(
              0.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
      child: Center(
        child: ListTile(
          isThreeLine: subtitle2 == null ? false : true,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 32,
              )
            ],
          ),
          title: Padding(
            padding: EdgeInsets.only(top: subtitle2 != null ? 8.0 : 0.0),
            child: DSText(
              data: title,
              textStyle: TextStyle(color: DSColor.primaryBlue, fontSize: 14),
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: subtitle2 != null ? 8.0 : 0.0),
            child: subtitle2 == null
                ? DSText(
                    data: subtitle,
                    textStyle: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4),
                      DSText(
                        data: subtitle,
                        textStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      DSText(
                        data: subtitle2,
                        textStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
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
