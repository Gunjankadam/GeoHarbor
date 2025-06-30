class GeoJsonResponse {
  final String message;
  final List<GeoJsonFeature> features;

  GeoJsonResponse({required this.message, required this.features});

  factory GeoJsonResponse.fromJson(Map<String, dynamic> json) {
    final geojson = json['geojson'];
    final features = geojson['features'] as List<dynamic>;

    return GeoJsonResponse(
      message: json['message'] ?? '',
      features: features.map((f) => GeoJsonFeature.fromJson(f)).toList(),
    );
  }
}

class GeoJsonFeature {
  final String id;
  final String name;
  final Map<String, dynamic> geometry;

  GeoJsonFeature({
    required this.id,
    required this.name,
    required this.geometry,
  });

  factory GeoJsonFeature.fromJson(Map<String, dynamic> json) {
    final geometry = json['geometry'] ?? {};
    final properties = json['properties'] ?? {};

    return GeoJsonFeature(
      id: json['id'] ?? '',
      name: properties['Name'] ?? '', // "Name" instead of "name"
      geometry: Map<String, dynamic>.from(geometry),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'geometry': geometry,
      };
}
