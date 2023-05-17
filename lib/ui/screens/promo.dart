import 'package:flutter/material.dart';
import '/common/my_colors.dart';
import '../widgets/tab_bar.dart';

class Promo extends StatefulWidget {
  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  int tabBarIndex = 1;

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
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              SizedBox(height: 50.0),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      color: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const SizedBox(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Vouchers',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      color: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const SizedBox(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Langganan',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      color: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const SizedBox(
                        width: 150,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Missions',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ]),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.list_alt,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Masukkan kode promo",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.list_alt,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Promo spesial dari GoFood",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
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
                        'Masih mau promo lain?',
                        style:
                            TextStyle(color: Colors.grey[400], fontSize: 14.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Banyak diskon menantimu.',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
