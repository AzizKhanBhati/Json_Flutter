import 'package:flutter/material.dart';
import 'package:json_parsing/views/json_five.dart';
import 'package:json_parsing/views/json_four.dart';
import 'package:json_parsing/views/json_one.dart';
import 'package:json_parsing/views/json_six.dart';
import 'package:json_parsing/views/json_three.dart';
import 'package:json_parsing/views/json_two.dart';
import 'package:json_parsing/widgets/Header.dart';
import 'package:json_parsing/widgets/next_screen_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: "JSON", subTitle: "Simple to Complex."),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NextScreenButton(widget: One(), name: "One"),
                  NextScreenButton(widget: Two(), name: "Two"),
                  NextScreenButton(widget: Three(), name: "Three"),
                  NextScreenButton(widget: Four(), name: "Four"),
                  NextScreenButton(widget: Five(), name: "Five"),
                  NextScreenButton(widget: Six(), name: "Six"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
