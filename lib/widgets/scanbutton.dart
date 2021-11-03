import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return FloatingActionButton(
      child: Icon(Icons.filter_center_focus),
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#3D8BEF', 'Cancelar', false, ScanMode.QR);
        print(barcodeScanRes);
        var cliente = new http.Client();
        Map<String, String> userHeader = {
          "Content-type": "application/json",
          "Accept": "application/json",
          "Authorization":
              "qBNucCuIiebxB4F7qPuY+Xwbh7Nn7y7LAT2neOfCotKPm/IO4eXzGRKqO5W3wXefGm487us7f1SpGnPjQVahmk6MdhWqLjZ5djbigvaTkOLpsrNPgRuxOVrIYtj2+iF7XZv4oFkAAoQDoW1rKv+h8zNCIm6tUTiV",
          "empresaId": "100"
        };
        var response = await cliente.get(
            Uri.http("200.49.166.60:10000", "/" + barcodeScanRes),
            headers: userHeader);
        if (response.statusCode == 200) {
          print(response.body);
        }
      },
    );
  }
}
