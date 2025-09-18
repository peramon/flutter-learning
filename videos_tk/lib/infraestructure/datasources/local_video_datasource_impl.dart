import 'package:videos_tk/domain/datasources/video_posts_datasource.dart';
import 'package:videos_tk/domain/entities/video_post.dart';
import 'package:videos_tk/infraestructure/models/local_video_model.dart';
import 'package:videos_tk/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
    // throw UnimplementedError();
  }
}
