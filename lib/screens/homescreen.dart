import 'package:flutter/material.dart';
import 'package:moderntodoapp/components/categoriesandtasksection.dart';
import 'package:moderntodoapp/components/header.dart';
import 'package:moderntodoapp/constants/colors.dart';
import 'package:moderntodoapp/util/category_and_task.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<CategoryTask> categories = [
  CategoryTask(categoryName: 'Work', tasks: [
    Task(
        icon: Icons.email,
        iconbgColor: Colors.deepPurple,
        title: 'Email Client',
        subtitle: 'Estimated Time',
        estimatedTime: '20min'),
    Task(
        icon: Icons.desk,
        iconbgColor: Colors.pink,
        title: 'Organize Desk',
        subtitle: 'Estimated Time',
        estimatedTime: '40min'),
    Task(
        icon: Icons.desk,
        iconbgColor: Colors.pink,
        title: 'Organize Desk',
        subtitle: 'Estimated Time',
        estimatedTime: '40min')
  ]),
  CategoryTask(categoryName: 'Personal', tasks: [
    Task(
        icon: Icons.shopping_cart,
        iconbgColor: Colors.green,
        title: 'Grocery Shopping',
        subtitle: 'Estimated Time',
        estimatedTime: '1hr'),
    Task(
        icon: Icons.book,
        iconbgColor: Colors.brown,
        title: 'Read a book',
        subtitle: 'Estimated Time',
        estimatedTime: '1hr'),
    Task(
        icon: Icons.book,
        iconbgColor: Colors.brown,
        title: 'Read a book',
        subtitle: 'Estimated Time',
        estimatedTime: '1hr'),
  ]),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surface,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              // Header Section
              const Header(),
              const SizedBox(height: 50),

              // Categories and Tasks Section
              Expanded(
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Categoriesandtasksection(
                        categoryTask: categories[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
