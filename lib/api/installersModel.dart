import 'dart:convert';

class InstallersModel{
  final int id;
  final String name;
  final int rating;
  final int price_per_km;
  final double lat;
  final double lng;

  InstallersModel({
    required this.id,
    required this.name,
    required this.rating,
    required this.price_per_km,
    required this.lat,
    required this.lng,
  });

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name': name,
      'rating' : rating,
      'price_per_km' : price_per_km,
      'lat' : lat,
      'lng' : lng,
    };
  }

  factory InstallersModel.fromMap(Map<String, dynamic> map) {
    return InstallersModel(
      id: map['id'],
      name: map['name'],
      rating: map['rating'],
      price_per_km: map['price_per_km'],
      lat: map['lat'],
      lng: map['lng'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InstallersModel.fromJson(String source) => InstallersModel.fromMap(json.decode(source));
}