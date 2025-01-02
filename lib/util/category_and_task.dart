import 'package:flutter/material.dart';

class CategoryTask {
  final String categoryName;
  final List<Task> tasks;

  CategoryTask({required this.categoryName, required this.tasks});
}

class Task {
  final IconData icon;
  final Color iconbgColor;
  final String title;
  final String subtitle;
  final String estimatedTime;

  Task(
      {required this.icon,
      required this.iconbgColor,
      required this.title,
      required this.subtitle,
      required this.estimatedTime});
}
