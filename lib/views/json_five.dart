import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/widgets/Header.dart';

class Five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: "Json Five", subTitle: "List of maps."),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width,
            child: GetX<Controller>(
              initState: (c) => c.controller!.jsonFiveDecode(),
              builder: (controller) {
                return controller.jsonFiveData.isNotEmpty
                    ? Container(
                        child: ListView.builder(
                          itemCount: controller.jsonFiveData.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                "${controller.jsonFiveData[index].title}",
                                style: textStyle,
                              ),
                            );
                          },
                        ),
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
