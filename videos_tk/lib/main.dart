import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videos_tk/config/theme/app_theme.dart';
import 'package:videos_tk/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:videos_tk/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:videos_tk/presentation/providers/discover_provider.dart';
import 'package:videos_tk/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImpl(
      videosDatasource: LocalVideoDatasourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // lazy: false,
          create: (_) =>
              DiscoverProvider(videosRepository: videoPostRepository)
                ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'Videos TK',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: DiscoverScreen(),
      ),
    );
  }
}
