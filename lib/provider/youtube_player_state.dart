// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerState extends Equatable {
  final PlayerState playerState;
  final YoutubeMetaData videoMetaData;
  final YoutubePlayerController? youtubePlayerController;
  final List<String> ids;
  final double volume;
  final bool muted;
  final bool isPlayerReady;

  const YoutubePlayerState({
    this.playerState = PlayerState.unknown,
    this.videoMetaData = const YoutubeMetaData(),
    this.youtubePlayerController,
    this.ids = const [],
    this.volume = 0.0,
    this.muted = false,
    this.isPlayerReady = false,
  });

  factory YoutubePlayerState.init() => YoutubePlayerState(
        playerState: PlayerState.unknown,
        videoMetaData: const YoutubeMetaData(),
        youtubePlayerController: YoutubePlayerController(initialVideoId: ''),
        ids: const [],
        volume: 0.0,
        muted: false,
        isPlayerReady: false,
      );

  YoutubePlayerState copyWith({
    PlayerState? playerState,
    YoutubeMetaData? videoMetaData,
    YoutubePlayerController? youtubePlayerController,
    List<String>? ids,
    double? volume,
    bool? muted,
    bool? isPlayerReady,
  }) {
    return YoutubePlayerState(
      playerState: playerState ?? this.playerState,
      videoMetaData: videoMetaData ?? this.videoMetaData,
      youtubePlayerController:
          youtubePlayerController ?? this.youtubePlayerController,
      ids: ids ?? this.ids,
      volume: volume ?? this.volume,
      muted: muted ?? this.muted,
      isPlayerReady: isPlayerReady ?? this.isPlayerReady,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      playerState,
      videoMetaData,
      youtubePlayerController!,
      ids,
      volume,
      muted,
      isPlayerReady,
    ];
  }
}
