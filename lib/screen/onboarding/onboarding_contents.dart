import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "心情日記",
    image: "images/onboarding_slide1.png",
    desc: "釋放壓力\r\n讓明天重新開始",
  ),
  OnboardingContents(
    title: "心理測驗",
    image: "images/onboarding_slide2.png",
    desc: "讓自己\r\n隨時掌握當前狀態",
  ),
  OnboardingContents(
    title: "幸福練習",
    image: "images/onboarding_slide3.png",
    desc: "每日5分鐘\r\n一個人的自我療癒",
  ),
];
