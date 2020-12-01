part of flutter_ds_bfi;

class DSCard extends StatelessWidget {
  final String noKontrak;
  final String licensePlate;
  final String angsuranPerBulan;
  final String jatuhTempo;
  final String bgCard;
  final String icon;
  final String titleAngsuran;
  const DSCard(
      {this.noKontrak,
      this.licensePlate,
      this.angsuranPerBulan,
      this.jatuhTempo,
      this.bgCard,
      this.icon,
      this.titleAngsuran});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: DSColor.primaryBlue.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1.5,
            offset: Offset(
              0.0,
              5.5,
            ),
          )
        ],
        image: DecorationImage(
          image: AssetImage(bgCard),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            icon,
                            width: 32,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                child: Text('No.Kontrak $noKontrak',
                    style: TextStyle(fontSize: 12, color: Colors.white)),
              ),
            ),
            subtitle: Text(licensePlate ?? '-',
                style: TextStyle(fontSize: 12, color: Colors.white)),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Container(
                      child: Text(
                        titleAngsuran,
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, bottom: 16.0),
                    child: Container(
                      child: Text(
                        angsuranPerBulan,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Container(
                      child: Text(
                        'Jatuh Tempo',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0, bottom: 16.0),
                    child: Text(jatuhTempo,
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
