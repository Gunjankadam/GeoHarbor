import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../model/geojson_model.dart';

Future<List<LatLng>> extractCoordinatesFromFile(String fileName) async {
  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/$fileName');

  if (!await file.exists()) {
    throw Exception("File does not exist: $fileName");
  }

  final extension = p.extension(file.path).toLowerCase().replaceAll('.', '');

  final endpoint = switch (extension) {
    'geojson' => '/uploadandparseGeoJsonFile',
    'kml' => '/uploadandparseKmlFile',
    'kmz' => '/uploadandparseKmzFile',
    'zip' => '/uploadAndParseShp',
    _ => '',
  };

  if (endpoint.isEmpty) {
    throw Exception("Unsupported file type: $extension");
  }

  final uri = Uri.parse('https://geoharbor.onrender.com/api$endpoint');
  final request = http.MultipartRequest('POST', uri);
  request.files.add(await http.MultipartFile.fromPath('file', file.path));

  final response = await request.send();
  final responseBody = await response.stream.bytesToString();

  if (response.statusCode != 200) {
    throw Exception("API failed with status ${response.statusCode}");
  }

  final parsed = jsonDecode(responseBody);
  final geoData = GeoJsonResponse.fromJson(parsed);

  List<LatLng> coords = [];

  for (var feature in geoData.features) {
    final geometry = feature.geometry;
    if (geometry != null &&
        geometry['type'] == 'Point' &&
        geometry['coordinates'] is List &&
        geometry['coordinates'].length >= 2) {
      final coordsList = geometry['coordinates'];

      try {
        double lon = double.parse(coordsList[0].toString());
        double lat = double.parse(coordsList[1].toString());
        coords.add(LatLng(lat, lon));
      } catch (_) {
        continue;
      }
    }
  }

  return coords;
}
