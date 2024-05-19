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

import 'dart:convert';
import 'package:flutter/services.dart' as services;

Future<String> convertCSVtoJson(String filePath) async {
  // Leitura do conteúdo do arquivo CSV
  final csvFile = await services.rootBundle.loadString(filePath);
  final csvLines = csvFile.split('\n');

  // Criação de uma lista para armazenar os dados JSON
  final jsonData = <Map<String, dynamic>>[];

  // Extração dos cabeçalhos do CSV
  final headers = csvLines[0].split(';');

  // Conversão das linhas do CSV em objetos JSON
  for (var i = 1; i < csvLines.length; i++) {
    final data = csvLines[i].split(';');
    final rowData = <String, dynamic>{};

    for (var j = 0; j < headers.length; j++) {
      rowData[headers[j]] = data[j];
    }

    jsonData.add(rowData);
  }

  // Retorno do JSON convertido
  return jsonEncode(jsonData);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
