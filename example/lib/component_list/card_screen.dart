import 'package:bfi_ds/flutter_ds_bfi.dart';
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
        child: DSCard(
          angsuranPerBulan: 'Rp. 500.000',
          jatuhTempo: '12/12/2020',
          licensePlate: 'B1MO',
          noKontrak: '054651064130',
          bgCard: 'assets/imgs/card_blue.png',
          icon: 'assets/imgs/mobil.png',
        ),
      )),
    );
  }
}
