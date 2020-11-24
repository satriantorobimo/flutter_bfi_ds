part of flutter_ds_bfi;

class DSCard extends StatelessWidget {
  final String noKontrak;
  final String licensePlate;
  final String angsuranPerBulan;
  final String jatuhTempo;
  final String bgCard;
  final String icon;
  const DSCard(
      {this.noKontrak,
      this.licensePlate,
      this.angsuranPerBulan,
      this.jatuhTempo,
      this.bgCard,
      this.icon});

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
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                )
              ],
            ),
            title: Container(
              child: Text('No.Kontrak $noKontrak',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
            subtitle: Text(licensePlate ?? '-',
                style: TextStyle(fontSize: 12, color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              child: Text(
                'Angsuran /bulan',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                child: Container(
                  child: Text(
                    angsuranPerBulan,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                child: Text('Jatuh Tempo $jatuhTempo',
                    style: TextStyle(fontSize: 12, color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}
