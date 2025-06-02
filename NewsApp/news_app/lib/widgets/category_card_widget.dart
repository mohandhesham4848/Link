import 'package:flutter/material.dart';
import 'package:news_app/pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  const CategoryCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(category: title),
            ),
          ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          width: 190.0,
          height: 120.0,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.redAccent,
          ),
          child: Center(
            child: Text(title, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
