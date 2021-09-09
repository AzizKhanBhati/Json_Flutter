import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/widgets/Header.dart';

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: "Json Three", subTitle: " Simple Nested structures."),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            child: GetX<Controller>(
              initState: (c) => c.controller!.jsonThreeDecode(),
              builder: (controller) {
                return controller.jsonThreeData.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.jsonThreeData[0].shapeName}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonThreeData[0].property.height.toInt()}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonThreeData[0].property.width.toInt()}",
                            style: textStyle,
                          ),
                        ],
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
