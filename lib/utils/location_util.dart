import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyCDl57ZvuMBUEY2-A32ymkKfVN5OKjvA1w';

class LocationUtil {
  // Método de Classe (Java)
  // com parâmetros nomeados
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }



  static Future<String> getAddressFrom(LatLng position) async {
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$GOOGLE_API_KEY';

    //final response = await http.get(url as Uri);// excepção
    final response = await http.get(Uri.parse(url));

    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}