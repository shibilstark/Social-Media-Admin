// ignore_for_file: constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const HOME_SCREEN = "/home";
const AUTH_SCREEN = "/auth";
const SETTINGS_SCREEN = "/settings";
const EDIT_PROFILE_SCREEN = "/edit_profile";
const NEW_POST_SCREEN = "/new_post";
const ONLINE_VIDEO_PLAYER = "/onlinevideoplayer";
const OFFLINE_VIDEO_PLAYER = "/offlinevideoplayer";
const ONLINE_IMAGE = "/seeimageonline";
const OFFLINE_IMAGE = "/seeimageoffline";
const COMMENTS_SCREEN = "/comments";
const PROFILE_FEED_SCREEN = "/profileFeed";
const OTHERS_PROFILE_SCREEN = "/others_profile";

class AppRouter {
  // final ProfileCubit profileCubit;
  // HomeRepo homeRepo = HomeServices();
  // PostRepo postRepo = PostServices();
  // late final HomeCubit homeCubit;

  AppRouter() {
    // homeCubit = HomeCubit(
    //     homeRepo: homeRepo, postRepo: postRepo, profileCubit: profileCubit);
  }
  Route? onGenerateRoute(RouteSettings routSettings) {
    switch (routSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Scaffold());
      // case HOME_SCREEN:
      //   return MaterialPageRoute(builder: (_) => HomeScreen());
      // case AUTH_SCREEN:
      //   return MaterialPageRoute(builder: (_) => AuthScreen());
      // case SETTINGS_SCREEN:
      //   return MaterialPageRoute(builder: (_) => SettingsScreen());
      // case EDIT_PROFILE_SCREEN:
      //   return MaterialPageRoute(builder: (_) => EditProfileScreen());
      // case NEW_POST_SCREEN:
      //   return MaterialPageRoute(builder: (_) => NewPostScreen());
      // case COMMENTS_SCREEN:
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => CommentScreen(
      //             postId: args.args['postId'],
      //           ));
      // case OTHERS_PROFILE_SCREEN:
      //   return MaterialPageRoute(builder: (_) => OthersProfileScreen());
      // case COMMENTS_SCREEN:
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => CommentScreen(postId: args.args['postId']));
      // case PROFILE_FEED_SCREEN:
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => ProfileFeedScreen(
      //           post: args.args['post'], user: args.args['user']));

      // case "/onlinevideoplayer":
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => SeePostVideoOnline(
      //             video: args.args['path'],
      //           ));
      // case "/offlinevideoplayer":
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => SeePostVideoOffline(
      //             video: args.args['path'],
      //           ));
      // case "/seeimageonline":
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => SeePostImageNetwork(
      //             image: args.args['path'],
      //           ));
      // case "/seeimageoffline":
      //   final args = routSettings.arguments as ScreenArgs;
      //   return MaterialPageRoute(
      //       builder: (_) => SeePostImageOffline(
      //             image: args.args['path'],
      //           ));

      default:
        // return MaterialPageRoute(builder: (_) => SplashScreen());
        return null;
    }
  }
}

class ScreenArgs {
  final Map<String, dynamic> args;
  ScreenArgs({required this.args});
}
