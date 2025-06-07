import 'package:flutter_tflite/flutter_tflite.dart';

class TfliteService {
  static Future<void> loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  static Future<List?> runModelOnImage(String imagePath) async {
    return await Tflite.runModelOnImage(
      path: imagePath,
      numResults: 7,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
  }

  static Future<void> disposeModel() async {
    await Tflite.close();
  }
}
