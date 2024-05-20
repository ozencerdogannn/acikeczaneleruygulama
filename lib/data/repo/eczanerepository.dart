import 'dart:convert';

import 'package:acikeczaneleruygulama/data/entity/eczane.dart';
import 'package:acikeczaneleruygulama/data/entity/eczanecevap.dart';
import 'package:dio/dio.dart';

class eczanerepository{
  List<eczane> parseEczane(String cevap){
    return EczaneCevap.fromJson(jsonDecode(cevap)).eczaneler;
  }


  Future<List<eczane>> eczaneleriYukle() async {
    var url = "https://api.collectapi.com/health/dutyPharmacy?ilce=%C3%87ankaya&il=Ankara";
    var response = await Dio().get(url);
    return parseEczane(response.data.toString());

  }
}