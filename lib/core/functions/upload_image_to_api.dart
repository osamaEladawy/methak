import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

Future uploadedImageToApi(XFile img) async {
  return await MultipartFile.fromFile(
    img.path,
    filename: img.path.split("/").last,
  );
}
