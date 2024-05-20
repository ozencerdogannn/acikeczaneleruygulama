import 'package:acikeczaneleruygulama/data/entity/eczane.dart';
import 'package:acikeczaneleruygulama/ui/cubit/anasayfacubit.dart';
import 'package:acikeczaneleruygulama/ui/view/eczanedetay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({super.key});

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  void initState() {
    super.initState();
    context.read<anasayfacubit>().eczaneleriYukle();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Eczaneler"),),
      body: BlocBuilder<anasayfacubit,List<eczane>>(
        builder: (context, eczaneListesi) {
          if(eczaneListesi.isNotEmpty){
            return ListView.builder(
              itemCount: eczaneListesi.length,
              itemBuilder:(context, index) {
                var eczane = eczaneListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>eczanedetay(Eczane: eczane)));
                  },
                  child: Card(
                     child: SizedBox(height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(eczane.eczane_ad,style: const TextStyle(fontSize: 20),),
                                Text(eczane.eczane_no),
                                Text(eczane.eczane_adress),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              );
          }
          else{
            return Center();
          }
        },
        )
    );
  }
}