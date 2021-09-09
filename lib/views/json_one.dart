import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/widgets/Header.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: "Json One", subTitle: "Simple map."),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            child: GetX<Controller>(
              initState: (c) => c.controller!.jsonOneDecode(),
              builder: (controller) {
                return controller.jsonOneData.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.jsonOneData[0].name}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonOneData[0].age}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonOneData[0].country}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonOneData[0].state}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonOneData[0].city}",
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
