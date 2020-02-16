import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:youtube_clone/models/video_item.dart';

const key = "AIzaSyADtda3z0epeXLe6FBQqFMk04CcbUGVyGo";
const base_url = "https://www.googleapis.com/youtube/v3";

class YoutubeRepository {
  Future<List<VideoItem>> find({String search}) async {
    final _response = await http.get("$base_url/search"
        "?part=snippet"
        "&type=video"
        "&maxResults=20"
        "&order=date"
        "&key=$key"
        "&p=$search");

    if (_response.statusCode != 200) {
      return null;
    }

    Map<String, dynamic> _jsonItems = json.decode(_response.body);
    List<VideoItem> _videos = _jsonItems["items"]
        .map<VideoItem>((item) => VideoItem.fromJson(item))
        .toList();

    return _videos;
  }
}
