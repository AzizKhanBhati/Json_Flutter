import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final controller = Get.put(Controller(), permanent: true);
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      );
}
