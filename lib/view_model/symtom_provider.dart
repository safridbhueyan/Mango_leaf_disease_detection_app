import 'package:flutter/material.dart';
import 'package:mango_leaf_disease/model/symtoms_model.dart';

class SymtomProvider with ChangeNotifier {
  final List<SymtomsModel> _model = [
    SymtomsModel(
      rawLabel: "0 Anthracnose",
      title: "অ্যানথ্রাকনোজ",
      subtitle: "Anthracnose",
      discription:
          "পাতায় বাদামি থেকে কালো রঙের দাগ পড়ে এবং পাতা শুকিয়ে যায়।",
      symtom: ["পাতায় বাদামি দাগ", "পাতা শুকিয়ে যাওয়া", 'ফলে কালো দাগ'],
      cure: "কপার অক্সিক্লোরাইড স্প্রে করুন।",
      resistance: [
        "নিয়মিত বাগান পরিষ্কার রাখুন",
        "আক্রান্ত পাতা সংগ্রহ করে ধ্বংস করুন",
        'সময়মত ছত্রাকনাশক প্রয়োগ করুন',
      ],
    ),
    SymtomsModel(
      rawLabel: "1 Bacterial Canker",
      title: "ব্যাকটেরিয়াল ক্যাঙ্কার",
      subtitle: "Bacterial Canker",
      discription: "পাতায় ছোট ছোট হলুদ দাগ দেখা যায়, পরে বাদামি রঙ ধারণ করে।",
      symtom: ["পাতায় হলুদ দাগ", "ডালে ক্যাঙ্কার", 'পাতা ঝরে যাওয়া'],
      cure: "স্ট্রেপ্টোমাইসিন সালফেট + কপার অক্সিক্লোরাইড স্প্রে করুন।",
      resistance: [
        "রোগ প্রতিরোধী জাত ব্যবহার করুন",
        "সঠিক দূরত্বে চারা রোপণ করুন",
        'নিয়মিত পর্যবেক্ষণ করুন',
      ],
    ),
    SymtomsModel(
      rawLabel: "2 Gall_Midge",
      title: "গল মিডজ",
      subtitle: "Gall Midge",
      discription: "পাতা ও ফুলের কুঁড়িতে অস্বাভাবিক গিঁট দেখা যায়।",
      symtom: ["পাতায় গিঁট", "ফুলের কুঁড়ি বিকৃত", "ফল কমে যাওয়া"],
      cure: "নিম ভিত্তিক কীটনাশক স্প্রে করুন।",
      resistance: [
        "আক্রান্ত অংশ অপসারণ করুন",
        "পরিচ্ছন্নতা বজায় রাখুন",
        "পোকামাকড় নিয়ন্ত্রণে রাখুন",
      ],
    ),
    SymtomsModel(
      rawLabel: "3 Healthy",
      title: "সুস্থ গাছ",
      subtitle: "Healthy",
      discription: "গাছ সম্পূর্ণ সুস্থ, কোনো রোগ লক্ষণ নেই।",
      symtom: ["লক্ষণ নেই", "পাতা সবুজ ও সতেজ", "ফল ভাল পরিমাণে ধরে"],
      cure: "কোনো চিকিৎসার প্রয়োজন নেই।",
      resistance: [
        "নিয়মিত সেচ ও সার দিন",
        "পরিবেশ পরিচ্ছন্ন রাখুন",
        "রোগ প্রতিরোধক ব্যবস্থা অবলম্বন করুন",
      ],
    ),
    SymtomsModel(
      rawLabel: "4 Late_blight",
      title: "লেট ব্লাইট",
      subtitle: "Late Blight",
      discription: "পাতা ও ডালে বড় বাদামি দাগ পড়ে, ফল পচে যেতে থাকে।",
      symtom: ["পাতা ও ডালে দাগ", "ফল পচে যাওয়া", "গাছ দুর্বল হয়ে পড়ে"],
      cure: "ম্যানকোজেব বা কপার ভিত্তিক ছত্রাকনাশক স্প্রে করুন।",
      resistance: [
        "প্রতিরোধী জাত ব্যবহার করুন",
        "আক্রান্ত অংশ সরিয়ে ফেলুন",
        "পর্যাপ্ত বায়ু চলাচল নিশ্চিত করুন",
      ],
    ),
    SymtomsModel(
      rawLabel: "5 Powdery Mildew",
      title: "পাউডারি মিলডিউ",
      subtitle: "Powdery Mildew",
      discription: "পাতায় সাদা পাউডারের মতো আবরণ দেখা যায়।",
      symtom: ["পাতায় সাদা পাউডার", "পাতা কুঁকড়ে যাওয়া", 'ফলের বৃদ্ধি কম'],
      cure: "সালফার ভিত্তিক ছত্রাকনাশক স্প্রে করুন।",
      resistance: [
        "বাগানে বায়ু চলাচল বাড়ান",
        "আক্রান্ত অংশ অপসারণ করুন",
        'প্রতিরোধী জাত ব্যবহার করুন',
      ],
    ),
    SymtomsModel(
      rawLabel: "6 Sooty_Mould",
      title: "সুটি মোল্ড",
      subtitle: "Sooty Mould",
      discription: "পাতায় কালো ধূলার মতো আবরণ দেখা যায়।",
      symtom: [
        "পাতায় কালো আবরণ",
        "ফটোসিনথেসিস কমে যাওয়া",
        'গাছের বৃদ্ধি ব্যাহত',
      ],
      cure: "স্টিকার মিশ্রিত কীটনাশক স্প্রে করুন।",
      resistance: [
        "পোকামাকড় নিয়ন্ত্রণ করুন",
        "সঠিক সারের ব্যবহার",
        'নিয়মিত পরিদর্শন',
      ],
    ),
  ];

  List<SymtomsModel> get model => _model;

  SymtomsModel? findDiseaseByLabel(String label) {
    try {
      return _model.firstWhere(
        (m) => m.rawLabel.toLowerCase().contains(label.toLowerCase()),
      );
    } catch (e) {
      return null;
    }
  }
}
