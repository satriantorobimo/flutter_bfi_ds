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
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
            child: DSCard(
              angsuranPerBulan: Text(
                'Rp. 500.000',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              jatuhTempo: Text('12 Desember 2020',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
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
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: DSCardContactUs(
                image: 'assets/imgs/phone_call.png',
                title: 'Telepon Kami',
                subtitle: 'Senin - Jumat: 08.00-18.00 WIB',
                subtitle2: 'Sabtu: 08.00 - 12.00 WIB'),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: DSCardContactUs(
                image: 'assets/imgs/phone_call.png',
                title: 'Telepon Kami',
                subtitle: 'Senin - Jumat: 08.00-18.00 WIB'),
          ),
          SizedBox(height: 30),
          Container(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.21,
              child: ListView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  DSCardLabel(
                    width: MediaQuery.of(context).size.width * 0.68,
                    height: MediaQuery.of(context).size.height * 0.21,
                    label: 'Pending',
                    title: 'Reza Rahardian',
                    header: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            DSText(
                              data: 'Agreement No : ',
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            DSText(
                              data: '40117201022',
                              textStyle: TextStyle(
                                color: DSColor.primaryBlue,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    content: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            DSText(
                              data: 'Applicant ID : ',
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            DSText(
                              data: '201719919293810AS',
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    footer: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: DSText(
                          data: '24/04/2018 11:42',
                          textStyle:
                              TextStyle(color: Colors.grey, fontSize: 14)),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  DSCardLabel(
                    width: MediaQuery.of(context).size.width * 0.68,
                    height: MediaQuery.of(context).size.height * 0.21,
                    label: 'Pending',
                    title: 'Reza Rahardian',
                    header: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            DSText(
                              data: 'Agreement No : ',
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            DSText(
                              data: '40117201022',
                              textStyle: TextStyle(
                                color: DSColor.primaryBlue,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    content: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            DSText(
                              data: 'Applicant ID : ',
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            DSText(
                              data: '201719919293810AS',
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    footer: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: DSText(
                          data: '24/04/2018 11:42',
                          textStyle:
                              TextStyle(color: Colors.grey, fontSize: 14)),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0),
            child: DSCardLabel(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.21,
              label: 'Submitted',
              title: 'Reza Rahardian',
              header: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      DSText(
                        data: 'Agreement No : ',
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      DSText(
                        data: '40117201022',
                        textStyle: TextStyle(
                          color: DSColor.primaryBlue,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              content: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      DSText(
                        data: 'Applicant ID : ',
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      DSText(
                        data: '201719919293810AS',
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
              footer: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: DSText(
                    data: '24/04/2018 11:42',
                    textStyle: TextStyle(color: Colors.grey, fontSize: 14)),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
