import 'package:sociello_admin/domain/models/post_model/post_model.dart';
import 'package:sociello_admin/domain/models/user_model/user_model.dart';

class ProfileFeedModel {
  final UserModel user;
  final List<PostModel> post;

  ProfileFeedModel({required this.user, required this.post});
}
