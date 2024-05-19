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

import 'package:csv/csv.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> csvFileToJson(String csvPath) async {
  // Fetch the CSV file
  var response = await http.get(Uri.parse(csvPath));
  String csvString = response.body;

  // Parse the CSV
  List<List<dynamic>> csvTable =
      const CsvToListConverter(fieldDelimiter: ';').convert(csvString);

  // Extract the CSV header
  List<String> headers =
      csvTable[0].map((header) => header.toString()).toList();

  // Remove the header from the table
  csvTable.removeAt(0);

  // Convert each row of the CSV to a map
  List<Map<String, dynamic>> jsonList = csvTable.map((List<dynamic> row) {
    return Map.fromIterables(headers, row.map((e) => e.toString()));
  }).toList();

  // Convert the list of maps to JSON string
  String jsonString = json.encode(jsonList);

  // Parse the JSON string into a JSON object
  List<dynamic> jsonData = json.decode(jsonString);

  // Return the JSON object
  return jsonData;
}
