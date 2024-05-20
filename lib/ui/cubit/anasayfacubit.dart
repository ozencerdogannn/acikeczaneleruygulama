import 'package:acikeczaneleruygulama/data/entity/eczane.dart';
import 'package:acikeczaneleruygulama/data/repo/eczanerepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class anasayfacubit extends Cubit<List<eczane>>{

  anasayfacubit():super(<eczane>[]);

  var erepo = eczanerepository();

  Future<void> eczaneleriYukle() async{
    var liste = await erepo.eczaneleriYukle();
    emit(liste);
  }
  
}