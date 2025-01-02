import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //drawer icon

        Material(
          elevation: 10,
          child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        )
      ],
    );
  }
}
