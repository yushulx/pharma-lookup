import 'package:flutter/material.dart';
import 'tab_page.dart';
import 'dart:async';
import 'global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<int> loadData() async {
    await _fetchData();
    return await initBarcodeSDK();
  }

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(
        'https://script.google.com/macros/s/AKfycbyPEx3THAbcLTNaJNOkQ1O3puTmQKXXOE_gkOGyKMzfIEUTr484qS8Dsi7-kTKpD333/exec'));

    if (response.statusCode == 200) {
      List<dynamic> list = json.decode(response.body);
      database = {
        for (var item in list)
          item['LotNumber'] as String: Pharma.fromJson(item)
      };
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamsoft Barcode Detection',
      theme: ThemeData(
        scaffoldBackgroundColor: colorMainTheme,
      ),
      home: FutureBuilder<int>(
        future: loadData(),
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator(); // Loading indicator
          }
          Future.microtask(() {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const TabPage()));
          });
          return Container();
        },
      ),
    );
  }
}
