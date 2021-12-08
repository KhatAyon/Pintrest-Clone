import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:pintrest_clone/homeview.dart';

void main() {
  runApp(DevicePreview(builder: (context) => Pclone()));
}

class Pclone extends StatelessWidget {
  const Pclone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      useInheritedMediaQuery: true,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }
}
