import 'package:day2Lab/models/post.dart';
import 'package:dio/dio.dart';

class PostsService {
  Future<List<Post>> getPosts(url) async {
    List<Post> posts = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    //print(response.data.toString());
    response.data.forEach((post) => {posts.add(Post.fromJson(post))});
    return posts.sublist(0, 10);
  }
}
