import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int? getTamanhoJson(List<dynamic>? tamanhoJson) {
  if (tamanhoJson != null) {
    return tamanhoJson.length;
  } else {
    return 0;
  }
}

String? formatNumberCompactCurrency(
  String? stringNumber,
  String symbol,
  String locale,
) {
  try {
    stringNumber = stringNumber?.replaceAll(',', '.');
    if (stringNumber != null) {
      var number = double.parse(stringNumber);
      return NumberFormat.compactCurrency(locale: locale, symbol: symbol)
          .format(number);
    }
  } catch (e) {
    print(e);
    return '0';
  }
}
