import 'package:flutter_application_1/models/question_model.dart';

const questions = [
  QuestionModel("Aşağıdakilerden hangisi bir widget türüdür?",
      ["Stateful", "Constructor", "Class", "Const"]),
  QuestionModel("Flutter'da kullanılan programlama dili hangisidir?",
      ["Java", "Swift", "Dart", "C++"]),
  QuestionModel(
      "Flutter, hangi platformlarda uygulama geliştirmek için kullanılabilir?",
      ["Android", "IOS", "Web", "Hepsi"]),
  QuestionModel("Flutter nedir?", [
    "Google tarafından geliştirilen bir oyun motoru",
    "Bir programlama dilidir",
    "Bir mobil uygulama geliştirme çerçevesi",
    "Veritabanı"
  ])
];
