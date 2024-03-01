import 'package:ip_check/ip_check.dart' as ip_check; 
// tutti i metodi raggruppameli sotto una classe chiamata ip_check

// async rende il main asincrono
void main(List<String> arguments) async {
  final ip = await ip_check.getIp();
  print(ip);
}
