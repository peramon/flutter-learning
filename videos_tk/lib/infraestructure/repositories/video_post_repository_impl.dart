import 'package:videos_tk/domain/datasources/video_posts_datasource.dart';
import 'package:videos_tk/domain/entities/video_post.dart';
import 'package:videos_tk/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videosDatasource;

  VideoPostRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
