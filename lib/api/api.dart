// // ignore_for_file: non_constant_identifier_names

// import 'package:demo_app/utils/pretty_print.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// String _baseUrl = dotenv.get('HOST', fallback: 'SUB-HOST');

// var API = Dio(
//   BaseOptions(
//     baseUrl: _baseUrl,
//     sendTimeout: 10000,
//     receiveTimeout: 10000,
//     connectTimeout: 10000,
//   ),
// )..interceptors.add(
//     InterceptorsWrapper(
//       // onRequest
//       onRequest: (options, handler) async {
//         debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
//         final payload = options.data;
//         if (payload is FormData) {
//           printDioFormData(payload);
//         } else if (payload != null) {
//           debugPrint('PAYLOAD => ${prettyPrint(options.data)}');
//         }
//         return handler.next(options);
//       },
//       // onResponse
//       onResponse: (response, handler) {
//         debugPrint('RESPONSE[${response.statusCode}]');
//         debugPrint('DATA: ${prettyPrint(response.data)}');
//         debugPrint('====================================================\n');
//         return handler.next(response);
//       },
//       // onError
//       onError: (DioError e, handler) {
//         debugPrint(
//             'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}');
//         debugPrint('DATA: ${prettyPrint(e.response?.data)}');
//         debugPrint('====================================================\n');
//         final res = e.response;
//         //==========================================================
//         if (res?.statusCode == 400 && res?.data['error'] != null) {
//           return handler.resolve(e.response!);
//         }
//         //==========================================================
//         if (res?.statusCode == 417 && res?.data['error'] != null) {
//           return handler.resolve(e.response!);
//         }

//         if (res?.statusCode == 400 && res?.data['error'] != null) {
//           return handler.resolve(e.response!);
//         }
//         return handler.next(e);
//       },
//     ),
//   );
