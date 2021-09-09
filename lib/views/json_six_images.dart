import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/widgets/Header.dart';

class SixImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
                title: "Json Six Images",
                subTitle: "Get particular data from a complex json."),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              child: GetX<Controller>(
                initState: (c) => c.controller!.jsonSixImagesDecode(),
                builder: (controller) {
                  return controller.jsonSixImagesData.isNotEmpty
                      ? Container(
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemCount: controller.jsonSixImagesData.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    top: 16, right: 64, bottom: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "imageId : ${controller.jsonSixImagesData[index].id.toString()}",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "imageName : ${controller.jsonSixImagesData[index].imageName}",
                                      style: textStyle,
                                    ),
                                  ],
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Get.back(),
        label: Text("Six"),
        icon: Icon(Icons.arrow_back),
        backgroundColor: Colors.brown[900],
      ),
    );
  }
}
