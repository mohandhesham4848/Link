import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/model/news_model.dart';

class NewsService {
  final String category;

  NewsService({required this.category});
  Future<List<NewsModel>> getNews() async {
    final dio = Dio();

    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=be4a937a4f284462be1dd1a644c7f2a3',
      );

      final articles = response.data['articles'] as List;

      List<NewsModel> newsList = [];

      for (var news in articles) {
        final imageUrl = news['urlToImage'];
        final ImageProvider<Object> imageProvider =
            imageUrl != null
                ? NetworkImage(imageUrl)
                : const AssetImage('assets/default.webp');

        newsList.add(
          NewsModel(
            image: imageProvider,

            title: news['title'] ?? 'No title',
            description: news['description'] ?? 'No description',
          ),
        );
      }

      return newsList;
    } catch (e) {
      return [];
    }
  }
}
