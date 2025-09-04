import 'package:flutter/material.dart';
import 'package:videos_tk/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: Cargar Videos
    notifyListeners();
  }
}
