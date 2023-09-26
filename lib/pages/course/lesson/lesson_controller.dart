import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/apis/lesson_api.dart';
import 'package:ulearning_app/common/entities/lesson.dart';
import 'package:ulearning_app/pages/course/lesson/bloc/lesson_bloc.dart';
import 'package:video_player/video_player.dart';

class LessonController {
  final BuildContext context;
  VideoPlayerController? videoPlayerController;
  LessonController({required this.context});

  void init() async {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    context.read<LessonBloc>().add(TriggerPlay(isPlay: false));
    asyncLoadLessonData(args['id']);
  }

  void asyncLoadLessonData(int? id) async {
    LessonRequestEntity lessonRequestEntity = LessonRequestEntity();
    lessonRequestEntity.id = id;
    var result = await LessonAPI.lessonDetail(params: lessonRequestEntity);

    if (result.code == 200) {
      if (context.mounted) {
        context
            .read<LessonBloc>()
            .add(TriggerLessonVideo(lessonVideoItem: result.data!));

        if (result.data!.isNotEmpty) {
          var url = result.data!.elementAt(0).url;
          videoPlayerController =
              VideoPlayerController.networkUrl(Uri.parse(url!));
          var initPlayer = videoPlayerController?.initialize();
          context.read<LessonBloc>().add(TriggerUrlItem(initPlayer));
        }
      }
    }
  }
}
