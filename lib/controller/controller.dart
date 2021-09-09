import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:json_parsing/models/model_five.dart';
import 'package:json_parsing/models/model_four.dart';
import 'package:json_parsing/models/model_one.dart';
import 'package:json_parsing/models/model_six.dart';
import 'package:json_parsing/models/model_three.dart';
import 'package:json_parsing/models/model_two.dart';

class Controller extends GetxController {
  /// One
  var jsonOneData = <ModelOne>[].obs;

  jsonOneDecode() async {
    jsonOneData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/one.json");
    final jsonResponse = jsonDecode(jsonString);
    ModelOne model = ModelOne.fromJson(jsonResponse);
    jsonOneData.add(model);
  }

  /// Two
  var jsonTwoData = <ModelTwo>[].obs;

  jsonTwoDecode() async {
    jsonTwoData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/two.json");
    final jsonResponse = jsonDecode(jsonString);
    ModelTwo model = ModelTwo.fromJson(jsonResponse);
    jsonTwoData.add(model);
  }

  /// Three
  var jsonThreeData = <ModelThree>[].obs;

  jsonThreeDecode() async {
    jsonThreeData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/three.json");
    final jsonResponse = jsonDecode(jsonString);
    ModelThree model = ModelThree.fromJson(jsonResponse);
    jsonThreeData.add(model);
  }

  /// Four
  var jsonFourData = <ModelFour>[].obs;

  jsonFourDecode() async {
    jsonFourData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/four.json");
    final jsonResponse = jsonDecode(jsonString);
    ModelFour model = ModelFour.fromJson(jsonResponse);
    jsonFourData.add(model);
  }

  /// Five
  var jsonFiveData = <ModelFive>[].obs;

  jsonFiveDecode() async {
    jsonFiveData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/five.json");
    final jsonResponse = jsonDecode(jsonString);
    jsonResponse.forEach((val) {
      ModelFive model = ModelFive.fromMap(val);
      jsonFiveData.add(model);
    });
  }

  /// Six
  var jsonSixData = <ModelSix>[].obs;

  jsonSixDecode() async {
    jsonSixData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/six.json");
    final jsonResponse = jsonDecode(jsonString);
    jsonResponse.forEach((json) {
      ModelSix model = ModelSix.fromMap(json);
      jsonSixData.add(model);
    });
  }

  /// Six: particular images data
  var jsonSixImagesData = <AllImages>[].obs;

  jsonSixImagesDecode() async {
    jsonSixImagesData.clear();
    var jsonString = await rootBundle.loadString("assets/jsons/six.json");
    final jsonResponse = jsonDecode(jsonString);
    jsonResponse.forEach((json) {
      json["data"].forEach((data) {
        data["images"].forEach((images) {
          AllImages model = AllImages.fromMap(images);
          jsonSixImagesData.add(model);
        });
      });
    });
  }
}
