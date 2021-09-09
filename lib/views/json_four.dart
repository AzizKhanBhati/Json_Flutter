import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/widgets/Header.dart';

class Four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: "Json Four", subTitle: "Nested structures with Lists."),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            child: GetX<Controller>(
              initState: (c) => c.controller!.jsonFourDecode(),
              builder: (controller) {
                return controller.jsonFourData.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.jsonFourData[0].id.toString()}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonFourData[0].name}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonFourData[0].images[0].id}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonFourData[0].images[0].imageName}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonFourData[0].images[1].id}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonFourData[0].images[1].imageName}",
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
