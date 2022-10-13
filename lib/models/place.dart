// Modelo que vai representar um local

import 'dart:io';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceLocation {
  // Atributos
  final double latitude;
  final double longitude;
  final String address;

  // Construtor com parâmetros nomeados
  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    this.address = '',
  });

  LatLng toLatLng() {
    return LatLng(this.latitude, this.longitude);
  }
}

class Place {
  // Atributos
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  // Construtor com parâmetros nomeados
  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}
