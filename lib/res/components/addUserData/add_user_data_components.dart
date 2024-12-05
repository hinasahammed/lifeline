import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> genderItems = [
  const DropdownMenuItem(
    value: "Male",
    child: Text("Male"),
  ),
  const DropdownMenuItem(
    value: "Female",
    child: Text("Female"),
  ),
  const DropdownMenuItem(
    value: "Other",
    child: Text("Other"),
  ),
];


  List<DropdownMenuItem<String>> bloodGroupItems = [
    const DropdownMenuItem(
      value: "A+",
      child: Text("A+"),
    ),
    const DropdownMenuItem(
      value: "A-",
      child: Text("A-"),
    ),
    const DropdownMenuItem(
      value: "B+",
      child: Text("B+"),
    ),
    const DropdownMenuItem(
      value: "B-",
      child: Text("B-"),
    ),
    const DropdownMenuItem(
      value: "AB+",
      child: Text("AB+"),
    ),
    const DropdownMenuItem(
      value: "AB-",
      child: Text("AB-"),
    ),
    const DropdownMenuItem(
      value: "O+",
      child: Text("O+"),
    ),
    const DropdownMenuItem(
      value: "O-",
      child: Text("O-"),
    ),
  ];