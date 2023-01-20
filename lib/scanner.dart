// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import

import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  String result = "Unknown";
  int currentIndex = 0;

  void barCodeScan2() async {
    var result = await BarcodeScanner.scan();

    if (kDebugMode) {
      print(result);
    }
    setState(() {
      this.result = result.rawContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Bar Code Result 1: $result"),
          TextButton(
              onPressed: barCodeScan2, child: const Text("Scan Bar Code")),
        ],
      ),
    );
  }
}
