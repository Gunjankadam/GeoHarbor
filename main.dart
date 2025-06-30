import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences
import 'view/home_page.dart';
import 'view/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token'); // Get token from SharedPreferences

  runApp(GeoHarborApp(token: token)); // Pass token to the app
}

class GeoHarborApp extends StatelessWidget {
  final String? token; // Token received in the constructor

  const GeoHarborApp({super.key, this.token});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoHarbor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 255, 255, 255), // light background
        primaryColor: Colors.teal,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        textTheme: const TextTheme(
          bodyLarge:
              TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 14),
          bodyMedium:
              TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 13),
        ),
      ),
      home: token != null
          ? HomePage()
          : RegisterPage(), // Navigate to HomePage if token exists, else RegisterPage
    );
  }
}
