import 'dart:convert';

class PlansModel{
  final int id;
  final String isp;
  final int data_capacity;
  final int download_speed;
  final int upload_speed;
  final String description;
  final double price_per_month;
  final String type_of_internet;

  PlansModel({
    required this.id,
    required this.isp,
    required this.data_capacity,
    required this.download_speed,
    required this.upload_speed,
    required this.description,
    required this.price_per_month,
    required this.type_of_internet,
  });

  Map<String, dynamic> toMap(){
    return {
    'id' : id,
    'isp': isp,
    'data_capacity' : data_capacity,
    'download_speed' : download_speed,
    'upload_speed' : upload_speed,
    'description' : description,
    'price_per_month' : price_per_month,
    'type_of_internet' : type_of_internet,
    };
  }

  factory PlansModel.fromMap(Map<String, dynamic> map) {
    return PlansModel(
      id: map['id'],
      isp: map['isp'] ?? '',
      data_capacity: map["data_capacity"] ?? 0,
      download_speed: map['download_speed'] ?? 0,
      upload_speed: map['upload_speed'].toInt(),
      description: map['description'],
      price_per_month: map['price_per_month'].toDouble(),
      type_of_internet: map['type_of_internet'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlansModel.fromJson(String source) => PlansModel.fromMap(json.decode(source));
}