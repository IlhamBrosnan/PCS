import 'package:flutter/material.dart';
import '/common/my_colors.dart';
import '/common/my_font_size.dart';
import '../widgets/tab_bar.dart';

class Car extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: Tab_Bar(),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                height: 50,
                decoration: BoxDecoration(
                    color: MyColors.whiteL2,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1.5, color: MyColors.softGrey)),
                child: Row(
                  children: [
                    Icon(Icons.arrow_circle_up,
                        color: MyColors.green, size: 20),
                    SizedBox(width: 10),
                    Expanded(
                        child: Text(
                      "Lokasi Tujuan",
                      style: TextStyle(
                          color: MyColors.grey, fontSize: MyFontSize.medium2),
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                height: 50,
                decoration: BoxDecoration(
                    color: MyColors.whiteL2,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1.5, color: MyColors.softGrey)),
                child: Row(
                  children: [
                    Icon(Icons.adjust_rounded,
                        color: Color(0XFFFFA726), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                        child: Text(
                      "Lokasi Penjemputan",
                      style: TextStyle(
                          color: MyColors.grey, fontSize: MyFontSize.medium2),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {},
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bookmark_add,
                        size: 35,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Simpan alamat, pesan lebih cepat",
                        style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(children: [
                  Text(
                    'Ada alamat yang sering dipakai?',
                    style: TextStyle(color: Colors.grey[400], fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Simpan yuk, biar ga ribet ketik alamat lagi.',
                    style: TextStyle(color: Colors.grey[400], fontSize: 16.0),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
