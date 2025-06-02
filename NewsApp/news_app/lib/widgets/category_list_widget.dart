import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card_widget.dart';

class CatgoryListView extends StatelessWidget {
  const CatgoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CategoryCard(image: ('assets/business.avif'), title: 'Business'),

        CategoryCard(image: ('assets/general.avif'), title: 'general'),
        CategoryCard(image: ('assets/health.avif'), title: 'health'),
        CategoryCard(image: ('assets/science.avif'), title: 'science'),
        CategoryCard(image: ('assets/sports.avif'), title: 'sports'),
        CategoryCard(image: ('assets/technology.jpeg'), title: 'technology'),
      ],
    );
  }
}
