import 'package:flutter/material.dart';
import 'package:webtoon_app_example/screens/home.dart';
import 'package:webtoon_app_example/services/api_service.dart';

void main() {
  ApiService().getTodayToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
