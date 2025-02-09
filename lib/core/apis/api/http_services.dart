import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'api_services.dart';

class HttpServices extends ApiServices {
  @override
  delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    bool isForm = false,
  }) async {
    try {
      final response = await http.delete(Uri.parse(path), body: data, headers: {
        
      });
      return response.body;
    } on HttpException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.get(Uri.parse(path), headers: {
       
      });
      if (response.statusCode == 200) {
        print("status code ${response.statusCode}");
        return response.body;
      }
    } on HttpException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    bool isForm = false,
  }) async {
    try {
      final response = await http.patch(Uri.parse(path), body: data, headers: {

      });
      return response.body;
    } on HttpException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    bool isForm = false,
  }) async {
    try {
      final response =
          await http.post(Uri.parse(path), body: data, headers: {});
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } on HttpException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
