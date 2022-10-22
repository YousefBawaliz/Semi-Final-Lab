import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  //the context is the one we created earlier in the firebase_auth_methods.dart
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
  ));
}
