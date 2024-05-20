import 'package:acikeczaneleruygulama/data/entity/eczane.dart';
import 'package:flutter/material.dart';

class eczanedetay extends StatefulWidget {
  eczane Eczane;
  eczanedetay({required this.Eczane});

  @override
  State<eczanedetay> createState() => _eczanedetayState();
}

class _eczanedetayState extends State<eczanedetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NÖBETÇİ ECZANE")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.Eczane.eczane_ad}"),
            Spacer(),
            Text("${widget.Eczane.eczane_adress}"),
            Spacer(),
            Text("${widget.Eczane.eczane_konum}"),
            Spacer(),
            Text("${widget.Eczane.eczane_no}"),
          ],
        ),
      )
    );
  }
}