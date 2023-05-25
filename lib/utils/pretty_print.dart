import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

String prettyPrint(dynamic json) {
  try {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String pretty = encoder.convert(json);
    return pretty;
  } catch (e) {
    return json.toString();
  }
}

void printDioFormData(FormData formData) {
  try {
    for (var item in formData.fields) {
      debugPrint('[FIELD] = ${item.key}: ${item.value}');
    }
    for (var item in formData.files) {
      debugPrint('[FILE] = ${item.key}: "${item.value.filename}"');
    }
  } catch (e) {
    debugPrint('FormData: $formData');
  }
}
