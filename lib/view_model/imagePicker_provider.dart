import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerProvider with ChangeNotifier {
  final ImagePicker _picker = ImagePicker();

  XFile? _pickedImage;

  XFile? get pickedIamage => _pickedImage;

  Future<void> galleryPick() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        _pickedImage = pickedFile;
        notifyListeners();
      }
    } catch (e) {
      debugPrint("Gallery pick error: $e");
    }
  }

  Future<void> cameraPick() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        _pickedImage = pickedFile;
        notifyListeners();
      }
    } catch (e) {
      debugPrint("camera pick error: $e");
    }
  }
}
