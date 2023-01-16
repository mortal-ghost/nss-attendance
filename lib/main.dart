import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Code Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bar Code Scanner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _scanBarCode = 'Unknown';
  String result = "Unknown";

  void barCodeScan2() async {
    var result = await BarcodeScanner.scan();

    if (kDebugMode) {
      print(result);
    }
    setState(() {
      this.result = result.rawContent;
    });
  }

  void barCodeScan() async {
    String barCodeScanRes;

    try {
      barCodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.BARCODE
      );
    } catch(e) {
      barCodeScanRes = "Scanning Failed. Try Again";
    }

    setState(() {
      _scanBarCode = barCodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Code Scanner"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Bar Code Result 1: $_scanBarCode"
          ),
          TextButton(onPressed: barCodeScan,  child: const Text(
            "Scan Bar Code"
          )),
          Text(
              "Bar Code Result 1: $result"
          ),
          TextButton(onPressed: barCodeScan2,  child: const Text(
              "Scan Bar Code 2"
          )),
        ],
      ),
    );
  }
}
