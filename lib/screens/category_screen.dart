import 'package:flutter/material.dart';
import 'package:quiz_app/data/app_data.dart';
import 'package:quiz_app/screens/questions_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < categoriesList.length; i++)
            _categoryCard(categoriesList[i], context),
        ],
      ),
    );
  }
}

Widget _categoryCard(Map<String, dynamic> category, context) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder:
                (BuildContext context) => QuestionsScreen(category: category),
          ),
          ModalRoute.withName('//'),
        );
      },
      child: Container(
        color: category["categoryColor"],
        child: Center(
          child: Text(
            category["categoryName"],
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
