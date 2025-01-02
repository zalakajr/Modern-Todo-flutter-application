import 'package:flutter/material.dart';
import 'package:moderntodoapp/constants/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    // Add function
    void addTodo() {
      setState(() {
        // Show AlertDialog when "Add" button is pressed
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // AlertDialog properties
              backgroundColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.symmetric(
                  horizontal: 50, vertical: 100), // Center the dialog
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              content: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10), // Add rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Centered Text',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        );
      });
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Drawer icon
        Material(
          elevation: 10,
          shape: CircleBorder(),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            iconSize: 30,
          ),
        ),

        // Add icon
        Material(
          color: addbuttonColor,
          elevation: 10,
          shape: CircleBorder(),
          child: IconButton(
            onPressed: () {
              addTodo();
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            iconSize: 30,
          ),
        )
      ],
    );
  }
}
