import 'package:flutter/material.dart';
import 'package:moderntodoapp/constants/colors.dart';
import 'package:moderntodoapp/util/category_and_task.dart';

class Categoriesandtasksection extends StatefulWidget {
  const Categoriesandtasksection({super.key, required this.categoryTask});

  // accessing category task
  final CategoryTask categoryTask;

  @override
  State<Categoriesandtasksection> createState() =>
      _CategoriesandtasksectionState();
}

class _CategoriesandtasksectionState extends State<Categoriesandtasksection> {
  @override
  Widget build(BuildContext context) {
    final category = widget.categoryTask;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Title and Options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category.categoryName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.more_vert),
            ],
          ),
          const SizedBox(height: 16),

          // Task List

          Column(
            children: category.tasks.map((task) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: AnimatedContainer(
                  height: 90,
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(4, 4))
                      ]),
                  duration: Duration(milliseconds: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: task.iconbgColor,
                              child: Icon(
                                task.icon,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  task.title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '${task.subtitle}: ${task.estimatedTime}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
