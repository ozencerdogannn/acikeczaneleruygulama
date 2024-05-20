class eczane {
  String eczane_ad;
  String enzane_semt;
  String eczane_adress;
  String eczane_no;
  String eczane_konum;

  eczane({required this.eczane_ad,required this.enzane_semt,required this.eczane_adress,required this.eczane_konum,required this.eczane_no});
  
  factory eczane.fromJson(Map<String,dynamic> json){
     return eczane(
      eczane_ad:json["name"] as String, 
      enzane_semt: json["dist"] as String, 
      eczane_adress: json["address"] as String, 
      eczane_konum: json["loc"] as String, 
      eczane_no: json["phone"] as String
      );
  }
}