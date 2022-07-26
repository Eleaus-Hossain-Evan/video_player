import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'youtube_player_state.dart';

final youtubePlayerStateProvider =
    StateNotifierProvider((_) => YoutubePlayerStateProvider());

class YoutubePlayerStateProvider extends StateNotifier<YoutubePlayerState> {
  YoutubePlayerStateProvider() : super(YoutubePlayerState());

  void initState() {
    state = state.copyWith(ids: [
      'nPt8bK2gbaU',
      'gQDByCdjUXw',
      'iLnmTe5Q2Qw',
      '_WoCV4c6XOE',
      'KmzdUe0RSJo',
      '6jZDSSZZxjQ',
      'p2lYr3vM_1w',
      '7QUtEmBT_-w',
      '34_PXCzGw1M',
    ]);
    state = state.copyWith(
        youtubePlayerController: YoutubePlayerController(
      initialVideoId: state.ids.first,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener));
    state = state.copyWith(videoMetaData: const YoutubeMetaData());
    state = state.copyWith(playerState: PlayerState.unknown);
  }

  void listener() {
    if (state.isPlayerReady &&
        mounted &&
        !state.youtubePlayerController!.value.isFullScreen) {
      state = state.copyWith(
          playerState: state.youtubePlayerController?.value.playerState);
      state = state.copyWith(
          videoMetaData: state.youtubePlayerController?.metadata);
    }
  }

  void deactivate() {
    // Pauses video while navigating to next page.
    state.youtubePlayerController?.pause();
  }

  void dispose() {
    state.youtubePlayerController?.dispose();
  }

  void onReady() {
    state = state.copyWith(isPlayerReady: true);
  }

  void changeMuted() {
    state = state.copyWith(muted: !state.muted);
  }

  void setVolume(value) {
    state = state.copyWith(volume: value);
  }
}
