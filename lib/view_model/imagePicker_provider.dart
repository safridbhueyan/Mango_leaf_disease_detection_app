import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mango_leaf_disease/detection_model/tf_lite_service.dart';

class ImagepickerProvider with ChangeNotifier {
  final ImagePicker _picker = ImagePicker();

  XFile? _pickedImage;
  List? _modelResults;

  XFile? get pickedImage => _pickedImage;
  List? get modelResults => _modelResults;

  Future<bool> galleryPick() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        _pickedImage = pickedFile;

        /// Run model
        _modelResults = await TfliteService.runModelOnImage(pickedFile.path);

        notifyListeners();
        return true;
      }
    } catch (e) {
      debugPrint("Gallery pick error: $e");
    }
    return false;
  }

  Future<bool> cameraPick() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        _pickedImage = pickedFile;

        /// Run model
        _modelResults = await TfliteService.runModelOnImage(pickedFile.path);

        notifyListeners();
        return true;
      }
    } catch (e) {
      debugPrint("Camera pick error: $e");
    }
    return false;
  }

  String cleanLabel(String rawLabel) {
    final parts = rawLabel.split(' ');
    if (parts.length > 1) {
      parts.removeAt(0); // remove index
      return parts.join(' ');
    }
    return rawLabel;
  }
}
