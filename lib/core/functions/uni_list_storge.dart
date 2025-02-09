import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

Future<Uint8List?> pickStorage(ImageSource source) async {
  try {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(
      source: source,
      maxWidth: source == ImageSource.camera ? 1080 : null,
      maxHeight: source == ImageSource.camera ? 1920 : null,
      imageQuality: source == ImageSource.camera ? 50 : null,
      requestFullMetadata: source == ImageSource.camera ? false : true,
    );
    if (file != null) {
      Uint8List image = await file.readAsBytes();
      return image;
    }
    if (kDebugMode) {
      print("no image found");
    }
    return null;
  } catch (e) {
    throw Exception(e.toString());
  }
}
