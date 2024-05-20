import 'package:acikeczaneleruygulama/data/entity/eczane.dart';

class EczaneCevap{
  List<eczane> eczaneler;
  bool succes;

  EczaneCevap({required this.eczaneler,required this.succes});

  factory EczaneCevap.fromJson(Map<String,dynamic> json){
    var jsonArray = json["eczane"] as List;
    bool succes = json["succes"] as bool;

    var Eczane = jsonArray.map((jsonArrayNesnesi) => eczane.fromJson(jsonArrayNesnesi)).toList();

     return EczaneCevap(eczaneler: Eczane, succes: succes) ;
  }
}