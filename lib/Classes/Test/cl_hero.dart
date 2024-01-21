// ignore_for_file: camel_case_types

import 'dart:ffi';
import 'package:flutter/material.dart';

class Cl_Hero extends ChangeNotifier {
  late Float result;

  void sum(var num1, var num2) {
    result = num1 + num2;
  }
}
