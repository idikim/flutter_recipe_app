import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.assetName, this.title, {super.key});

  final String assetName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/$assetName.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            'Made $title',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            // 문자열 안에 $기호와 변수명을 입력하면 문자열 내에서 변수를 사용할 수 있습니다.
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
