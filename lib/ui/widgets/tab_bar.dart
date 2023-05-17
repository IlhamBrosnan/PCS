import 'package:flutter/material.dart';
import 'package:indojek/ui/screens/beranda.dart';
import '/common/my_colors.dart';
import '/common/my_font_size.dart';
import '../screens/profile.dart';

class Tab_Bar extends StatefulWidget {
  
  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {

  int tabBarIndex = 0;

  List<bool> tabBarBadgeList = [
    false,
    false,
    false,
    true,
    false
  ];

  List tabBarList = [
    "Beranda",
    "Promo",
    "Pesanan",
    "Chat",
    "Profile"
  ];
  
  @override
  Widget build(BuildContext context) {
    Widget tabBarItem(int index) {
      return Expanded(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: (tabBarIndex == index)
                        ? MyColors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      tabBarIndex = index;
                    });
                    if(tabBarIndex == 0){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Beranda()),
                      );
                    }
                    if(tabBarIndex == 1){
                      Navigator.pushReplacementNamed(
                        context,
                        '/promo',
                      );
                    }
                    if(tabBarIndex == 2){
                      Navigator.pushReplacementNamed(
                        context,
                        '/pesanan',
                      );
                    }
                    if(tabBarIndex == 3){
                      Navigator.pushReplacementNamed(
                        context,
                        '/chat',
                      );
                    }
                    if(tabBarIndex == 4){
                      Navigator.pushReplacementNamed(
                        context, '/profile'
                      );
                    }
                  },
                  child: Center(
                    child: Text(
                      tabBarList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: (tabBarIndex == index)
                            ? MyColors.darkGreen
                            : MyColors.white,
                        fontSize: MyFontSize.medium1,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            if (tabBarBadgeList[index])
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: MyColors.red,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1.5, color: MyColors.white)),
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    )),
              )
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        margin: EdgeInsets.only(top:15, bottom: 15),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.darkGreen,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            tabBarItem(0),
            tabBarItem(1),
            tabBarItem(2),
            tabBarItem(3),
            tabBarItem(4),
          ],
        ),
      );
    }
    return tabBar();
  }
}