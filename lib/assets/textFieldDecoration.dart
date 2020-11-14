import 'package:flutter/material.dart';
import 'package:youth_counsellor/assets/fontAsset.dart';

class TextFieldDecoration {
  static InputDecoration inputDecoration = InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey)),
      labelStyle: FontAsset.regularText.copyWith(color: Colors.grey));
}
