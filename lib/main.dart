import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indojek/common/my_colors.dart';
import 'package:indojek/ui/screens/beranda.dart';
import 'package:indojek/ui/screens/profile.dart';
import 'package:indojek/ui/screens/promo.dart';
import 'package:indojek/ui/screens/pesanan.dart';
import 'package:indojek/ui/screens/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IndoJek',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: new Beranda(),
      routes: {
        "/beranda": (_) => new Beranda(),
        "/promo": (_) => new Promo(),
        "/pesanan": (_) => new Pesanan(),
        "/chat": (_) => new Chat(),
        "/profile": (_) => new Profile(),
      },
    );
  }
}
