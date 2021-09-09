import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreenButton extends StatelessWidget {
  final Widget widget;
  final String name;

  NextScreenButton({required this.widget, required this.name});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 18, vertical: 8)),
          backgroundColor: MaterialStateProperty.all(Colors.grey[200])),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
      ),
      onPressed: () {
        Get.to(() => widget);
      },
    );
  }
}
