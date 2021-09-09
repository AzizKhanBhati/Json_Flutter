import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/widgets/Header.dart';

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: "Json Two", subTitle: "Simple structure with arrays"),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            child: GetX<Controller>(
              initState: (c) => c.controller!.jsonTwoDecode(),
              builder: (controller) {
                return controller.jsonTwoData.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.jsonTwoData[0].city}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonTwoData[0].streets[0]}",
                            style: textStyle,
                          ),
                          Text(
                            "${controller.jsonTwoData[0].streets[1]}",
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
