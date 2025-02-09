import 'dart:typed_data';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

ImageProvider<Object>? profileImage({Uint8List? image, String? imageUrl}) {
  if (image == null) {
    if (imageUrl == null || imageUrl == "") {
      return const AssetImage("assets/images/profile.png");
    } else {
      return NetworkImage(imageUrl);
    }
  } else {
    return MemoryImage(image);
  }
}

Widget? profileWidget({Uint8List? image, String? imageUrl}) {
  if (image == null) {
    if (imageUrl == null || imageUrl == "") {
      return Image.asset("assets/images/profile_default.png");
    } else {
      return FancyShimmerImage(
        imageUrl: imageUrl,
        errorWidget: Image.asset(''),
        // shimmerBaseColor: randomColor(),
        // shimmerHighlightColor: randomColor(),
        // shimmerBackColor: randomColor(),
      );
    }
  } else {
    return Image.memory(image);
  }
}
