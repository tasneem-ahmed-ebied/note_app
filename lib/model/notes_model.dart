import 'package:flutter/material.dart';

class NotesModel {
  final String title;
  final String description;
  final int num;
  final Color stateBoxColor;
  final String duration;

  NotesModel({
    required this.title,
    required this.description,
    required this.num,
    required this.stateBoxColor,
    required this.duration,
  });
}
