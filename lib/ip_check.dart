//https://api.ipify.org/

import "package:http/http.dart" as http;
import "dart:convert";

const stringUrl = "https://ipapi.co/json";

//con async rendo il metodo asincrono. Le Future raccolgono i dati asincroni
//Future<String> -> dichiarazione di una funzione asincrona che restituisce un valore di tipo String.
//getIp() -> funzione che restituisce un oggetto di tipo Ip.
Future<Dati> getIp() async {
  //prende url fornito e lo trasforma in un oggetto(Uri) utilizzabile 
  final url = Uri.parse(stringUrl);
  // await aspetta finché non si risolve la richiesta
  final res = await http.get(url);
  // nel body c'è il json che vogliamo decodificare, con json.decode faccio la decodifica
  // definisce una map <key, value>
  final Map<String, dynamic> data = json.decode(res.body);

  return Dati(ip: data["ip"], city: data["city"], region: data["region"], region_code: data["region_code"]); 
}
//faccio una classe nella quale creo una property ip e la definisco required
class Dati {
  String city;
  String ip;
  String region;
  String region_code;
  Dati({required this.ip, required this.city, required this.region, required this.region_code});
  //quando in questo oggetto viene richiamato il metodo toString(ogni volta che viene fatto print) fai return dell'ip
  
  @override
  String toString() {
    
    return "My ip is: $ip, my city is: $city, my region is: $region, my region code is: $region_code";
  }
}

