import 'package:flutter/material.dart';

final authTextFieldStyle = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.all(8),
    hintText: 'UserName : ',
    prefixIcon: const Icon(
      Icons.person,
      color: Colors.black,
      size: 26,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ));
