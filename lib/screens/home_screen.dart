import 'package:flutter/material.dart';
import 'package:webtoon_app_example/models/webtoon_model.dart';
import 'package:webtoon_app_example/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebtoons() async {
    webtoons = await ApiService.getTodayToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebtoons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2, // appbar bottom shadow
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        toolbarHeight: 80, // appbar height setting
        centerTitle: true,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
