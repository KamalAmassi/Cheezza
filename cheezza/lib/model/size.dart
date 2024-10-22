import 'dart:js';

import 'package:flutter/material.dart';

class Size {
  final double height;
  final double width;

  Size(BuildContext context)
      : height = MediaQuery.of(context).size.height,
  width = MediaQuery.of(context).size.width;
  }


