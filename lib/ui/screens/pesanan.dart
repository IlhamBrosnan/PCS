import 'package:flutter/material.dart';
import '/common/my_colors.dart';
import '../widgets/tab_bar.dart';

class Pesanan extends StatefulWidget {
  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  int tabBarIndex = 2;

  var _scrollController = ScrollController();

  bool isBrush = false;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 0) {
        isBrush = true;
        setState(() {});
      } else {
        isBrush = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: AppBar(
          backgroundColor: MyColors.green,
          title: Tab_Bar(),
        ),
        body: Stack(children: [
          ListView(
            controller: _scrollController,
            children: [
              SizedBox(height: 20),
              Container(
                child: Text(''),
              ),
              SizedBox(height: 20),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 20.0,
            right: 20.0,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Riwayat',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ],
                    )),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Dalam Proses',
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Column(children: [
                      Text(
                        'Terjadwal',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                    ]))
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
