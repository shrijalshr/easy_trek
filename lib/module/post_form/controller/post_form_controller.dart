import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class PostFormController extends GetxController {
  Rx<File>? selectedfile;
  var didPick = false.obs;
  var fileName = "".obs;
  String? filePath;
  String? base64FileSTR;
  String? fileExtension;

  final ImagePicker imagePicker = ImagePicker();
  RxList<XFile>? imageFileList = <XFile>[].obs;

  void selectImages() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:${imageFileList!.length}");
    update();
  }

  Future<int> deleteFile(String path) async {
    try {
      final file = File(path);

      await file.delete();
      update();
      return 0;
    } catch (e) {
      Get.snackbar(
        "No such file found",
        "Either file has already been deleted or it is corrupted.",
        snackPosition: SnackPosition.BOTTOM,
      );
      update();
      return 0;
    }
  }
}
