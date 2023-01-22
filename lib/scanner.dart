// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_this

// import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  String _scanbarcode = "Unknown";
  int currentIndex = 0;
  late String barcoederes;

  void barCodeScan2() async {
    var barcoderes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancel', true, ScanMode.QR);

    if (kDebugMode) {
      print(barcoderes);
    }
    setState(() {
      this._scanbarcode = barcoderes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Bar Code Result: $_scanbarcode"),
          TextButton(
              onPressed: barCodeScan2, child: const Text("Scan Bar Code")),
        ],
      ),
    );
  }
}
