import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerProvider with ChangeNotifier {
  final ImagePicker _picker = ImagePicker();

  XFile? _pickedImage;

  XFile? get pickedIamage => _pickedImage;

  Future<bool> galleryPick() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        _pickedImage = pickedFile;
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
        notifyListeners();
        return true;
      }
    } catch (e) {
      debugPrint("Camera pick error: $e");
    }
    return false;
  }
}
