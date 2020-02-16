class VideoItem {
  String id;
  String title;
  String description;
  String image;

  VideoItem({this.id, this.title, this.description, this.image});

  factory VideoItem.fromJson(Map<String, dynamic> json) {
    return VideoItem(
        id: json["id"]["videoId"],
        title: json["snippet"]["title"],
        description: json["snippet"]["description"],
        image: json["snippet"]["thumbnails"]["high"]["url"]);
  }
}
