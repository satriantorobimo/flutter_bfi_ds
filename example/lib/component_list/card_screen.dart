import 'package:flutter_ds_bfi/flutter_ds_bfi.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
        child: Column(
          children: [
            DSCard(
              angsuranPerBulan: 'Rp. 500.000',
              jatuhTempo: '12 Desember 2020',
              licensePlate: 'B1MO',
              noKontrak: '054651064130',
              bgCard: 'assets/imgs/card_blue.png',
              icon: 'assets/imgs/mobil.png',
              titleAngsuran: 'Tagihan Bulan Ini',
              arrowUp: 'assets/imgs/arrow_up_white.png',
              onTap: () {
                print('tap tap tap');
              },
            ),
            SizedBox(height: 30),
            DSCardContactUs(
                image: 'assets/imgs/phone_call.png',
                title: 'Telepon Kami',
                subtitle: 'Senin - Jumat: 08.00-18.00 WIB',
                subtitle2: 'Sabtu: 08.00 - 12.00 WIB'),
            SizedBox(height: 30),
            DSCardContactUs(
                image: 'assets/imgs/phone_call.png',
                title: 'Telepon Kami',
                subtitle: 'Senin - Jumat: 08.00-18.00 WIB'),
          ],
        ),
      )),
    );
  }
}
