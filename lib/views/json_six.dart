import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_parsing/controller/controller.dart';
import 'package:json_parsing/views/json_six_images.dart';
import 'package:json_parsing/widgets/Header.dart';

class Six extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.subtitle1;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(title: "Json Six", subTitle: "Complex nested structures."),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              child: GetX<Controller>(
                initState: (c) => c.controller!.jsonSixDecode(),
                builder: (controller) {
                  return controller.jsonSixData.isNotEmpty
                      ? Container(
                          child: ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemCount: controller.jsonSixData.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                color: Colors.red[100],
                                margin: EdgeInsets.only(
                                    top: 16, right: 64, bottom: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "page : ${controller.jsonSixData[index].page.toString()}",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "perPage : ${controller.jsonSixData[index].perPage.toString()}",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "total : ${controller.jsonSixData[index].total.toString()}",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "totalPage : ${controller.jsonSixData[index].totalPages.toString()}",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "Author Name : ${controller.jsonSixData[index].author.firstName} ${controller.jsonSixData[index].author.lastName} ",
                                      style: textStyle,
                                    ),
                                    Text("DATA :- "),
                                    Container(
                                      color: Colors.blue[100],
                                      margin: EdgeInsets.only(
                                          top: 16, right: 64, bottom: 16),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: ClampingScrollPhysics(),
                                        itemCount: controller
                                            .jsonSixData[index].data.length,
                                        itemBuilder: (context, dataIndex) {
                                          return Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Id : ${controller.jsonSixData[index].data[dataIndex].id.toString()}",
                                                  style: textStyle,
                                                ),
                                                Text(
                                                  "Name : ${controller.jsonSixData[index].data[dataIndex].firstName} ${controller.jsonSixData[index].data[dataIndex].lastName} ",
                                                  style: textStyle,
                                                ),
                                                Text("Images :- "),
                                                Container(
                                                  color: Colors.pink[100],
                                                  margin: EdgeInsets.only(
                                                      top: 16,
                                                      right: 64,
                                                      bottom: 16),
                                                  child: ListView.builder(
                                                    shrinkWrap: true,
                                                    physics:
                                                        ClampingScrollPhysics(),
                                                    itemCount: controller
                                                        .jsonSixData[index]
                                                        .data[dataIndex]
                                                        .images
                                                        .length,
                                                    itemBuilder:
                                                        (context, imageIndex) {
                                                      return Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "imageId : ${controller.jsonSixData[index].data[dataIndex].images[imageIndex].id}",
                                                              style: textStyle,
                                                            ),
                                                            Text(
                                                              "imageName : ${controller.jsonSixData[index].data[dataIndex].images[imageIndex].imageName} ",
                                                              style: textStyle,
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
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
        onPressed: () {
          Get.to(() => SixImages());
        },
        label: Text("Images"),
        icon: Icon(Icons.arrow_forward),
        backgroundColor: Colors.brown[900],
      ),
    );
  }
}
