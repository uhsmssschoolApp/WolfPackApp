import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/constants/consts.dart';

Widget pageOne() {
  return Column(
    children: [
      Expanded(
        child: Container(),
        flex: 1,
      ),
      Expanded(
        child: Container(
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: pageOneIntro,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText("Welcome"),
                FadeAnimatedText("Bienvenue"),
                FadeAnimatedText("欢迎"),
                FadeAnimatedText("ようこそ"),
                FadeAnimatedText("Bienvenida"),
                FadeAnimatedText("환영하다"),
                FadeAnimatedText("Kia ora"),
              ],
            ),
          ),
        ),
        flex: 6,
      ),
      Expanded(
        child: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child: AnimatedTextKit(repeatForever: true, animatedTexts: [
              FadeAnimatedText("Swipe to get started",
                  textStyle: const TextStyle(fontFamily: "SF")),
              FadeAnimatedText("→",
                  textStyle: const TextStyle(fontFamily: "SF"))
            ])),
        flex: 1,
      )
    ],
  );
}
