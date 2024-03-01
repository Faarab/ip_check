import "dart:convert";

class Ip {
  String city;
  String ip;
  String region;
  String region_code;

  Ip({required this.ip, 
        required this.city, 
        required this.region, 
        required this.region_code});
  //quando in questo oggetto viene richiamato il metodo toString(ogni volta che viene fatto print) fai return dell'ip
  
  @override
  String toString() {
    
    return "My ip is: $ip, my city is: $city, my region is: $region, my region code is: $region_code";
  }

  
}