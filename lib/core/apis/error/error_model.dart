




import '../links/api_keys.dart';

class ErrorModel {
  final int status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json[ApiKeys.token],
      errorMessage: json[ApiKeys.errorMessage],
    );
  }
}
