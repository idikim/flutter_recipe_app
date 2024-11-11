import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_item.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'package:flutter_recipe_app/recipe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "NotoSansKr"),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Icon(
            CupertinoIcons.heart,
            color: Colors.redAccent,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem('coffee', 'Coffee'), // for coffee
            RecipeListItem('burger', 'Burger'), // for burger
            RecipeListItem('pizza', 'Pizza'), // for pizza
          ],
        ),
      ),
    );
  }
}
