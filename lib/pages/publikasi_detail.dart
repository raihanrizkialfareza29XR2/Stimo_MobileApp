import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stimo/theme.dart';

class PublikasiDetail extends StatelessWidget {
  const PublikasiDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/DataCenterRack.png',
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 330,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(47),
                    ),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 18.0,
                          spreadRadius: 0.0,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 52,
                                left: 29,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffFF7272),
                              ),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text('Unduh Publikasi',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 10,
                                    )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 52,
                                left: 14,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xffD9D9D9),
                              ),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  'Publikasi Lainnya',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 125,
                          left: 30,
                        ),
                        child: Text(
                          'Kecamatan Trawas Dalam\nAngka 2022',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: extraBold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 220,
                          left: 30,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/Akun.png',
                                width: 33,
                              ),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Container(
                              child: Text(
                                'Oleh : BPS Kabupaten Mojokerto',
                                style: blackTextStyle.copyWith(
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 290,
                          left: 30,
                          right: 30,
                        ),
                        child: Text(
                            'Kecamatan Trawas Dalam Angka 2022 ini merupakan seri publikasi\ntahunan BPS. Buku ini menyajikan statistik dan informasi yang\nutamanya dari data sekunder, yaitu data yang bersumber di luar\n Badan Pusat Statistik, khususnya dari instansi pemerintah di\nKecamatan Trawas. Publikasi ini mencakup informasi geografi,\nenergi, pendidikan, kesehatan, sosial, perdagangan dan potensi\ndesa',
                            style: blackTextStyle.copyWith(
                              fontWeight: regular,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 600,
                          left: 30,
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text('Nomor Katalog : '),
                                  ),
                                  Container(
                                    child: Text(
                                      '1102001.3516040',
                                      style: blueseaTextStyle.copyWith(
                                        fontWeight: regular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text('Nomor Publikasi : '),
                                  ),
                                  Container(
                                    child: Text(
                                      '35160.2211',
                                      style: redfireTextStyle.copyWith(
                                        fontWeight: regular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text('ISSN/ISBN : '),
                                  ),
                                  Container(
                                    child: Text(
                                      '2615-0549',
                                      style: greenTextStyle.copyWith(
                                        fontWeight: regular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text('Tanggal Rilis : '),
                                  ),
                                  Container(
                                    child: Text(
                                      '2022-09-26',
                                      style: greenTextStyle.copyWith(
                                        fontWeight: regular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text('Ukuran File : '),
                                  ),
                                  Container(
                                    child: Text(
                                      '8,84 MB',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: regular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
