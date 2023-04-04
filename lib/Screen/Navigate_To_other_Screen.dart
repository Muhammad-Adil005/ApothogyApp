import 'package:flutter/material.dart';

dynamic NavigateTo({required dynamic context, required dynamic page}) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => page));
}
