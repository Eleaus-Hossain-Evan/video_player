import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/provider/youtube_player_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'provider/course_provider.dart';
import 'provider/course_state.dart';

class Youtube extends StatefulHookConsumerWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _YoutubeState();
}

class _YoutubeState extends ConsumerState<Youtube> {
  late CourseState state;
  // late YoutubePlayerController youtubePlayerController;

  void init() async {}

  @override
  void initState() {
    init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController youtubePlayerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=hCMo5xmVVIA')!);
    final _textEditingController = useTextEditingController();
    state = ref.watch(courseProvider);

    useEffect(
      () {
        Future.microtask(
          () async {
            await ref
                .read(courseProvider.notifier)
                .fetchSingleCourse('62de33fb8f20ef920e661db1')
                .then((value) {
              return youtubePlayerController
                  .load(YoutubePlayer.convertUrlToId(state.course.introClip)!);
            });
          },
        );
        return null;
      },
      [],
    );

    return state.loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: youtubePlayerController,
            ),
            builder: (context, player) {
              return Scaffold(
                body: Column(
                  children: [
                    player,
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter Video URL",
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        youtubePlayerController.load(
                          YoutubePlayer.convertUrlToId(
                              _textEditingController.text)!,
                        );
                      },
                      child: Text("Play Video"),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
