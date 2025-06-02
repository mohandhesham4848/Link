import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';

class NewsCard extends StatelessWidget {
  final NewsModel newsModel;
  const NewsCard({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image(
              image: newsModel.image,
              height: 220,
              width: double.infinity,
            ),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            newsModel.title,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            newsModel.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
