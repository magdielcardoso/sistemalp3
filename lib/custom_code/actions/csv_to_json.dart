// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String csvToJson(String csvText) {
  List<String> lines = csvText.split('\n');
  List<String> headers = lines[0].split(';');
  List<Map<String, dynamic>> jsonDataList = [];

  for (int i = 1; i < lines.length; i++) {
    List<String> data = lines[i].split(';');
    Map<String, dynamic> jsonData = {};
    for (int j = 0; j < headers.length; j++) {
      jsonData[headers[j].trim()] = data[j].trim();
    }
    jsonDataList.add(jsonData);
  }

  String jsonString = '';

  for (int i = 0; i < jsonDataList.length; i++) {
    jsonString += '{';
    jsonDataList[i].forEach((key, value) {
      jsonString += '"$key": "$value", ';
    });
    jsonString = jsonString.substring(
        0, jsonString.length - 2); // Remove trailing comma and space
    jsonString += '}';
    if (i != jsonDataList.length - 1) {
      jsonString += ',';
    }
  }

  return '[$jsonString]';
}
