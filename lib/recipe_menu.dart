import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          menuItem(Icons.food_bank, 'ALL'),
          SizedBox(
            width: 25,
          ),
          menuItem(Icons.food_bank, 'Coffee'),
          SizedBox(
            width: 25,
          ),
          menuItem(Icons.food_bank, 'Burger'),
          SizedBox(
            width: 25,
          ),
          menuItem(Icons.food_bank, 'Pizza'),
        ],
      ),
    );
  }

  Container menuItem(IconData iconData, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
