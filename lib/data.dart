class YoutubeModel {
  final String title;
  final String description;
  final String thumbNail;
  final String publishedTime;
  final String channelTitle;
  final String channelAvatar;
  final String viewCount;
  final String likeCount;
  final String dislikeCount;

  YoutubeModel( // constructor
      {required this.title,
        required this.description,
        required this.thumbNail,
        required this.publishedTime,
        required this.channelTitle,
        required this.channelAvatar,
        required this.viewCount,
        required this.likeCount,
        required this.dislikeCount});
}

List<YoutubeModel> youtubeData = [ //list of type this class with constuctor callers
  YoutubeModel(
    title: "RONALDO BEST GOALS",
    description:
    "",
    thumbNail: "images/v1.jpg",
    publishedTime: "2 weeks ago",
    channelTitle: " RONALDO",
    channelAvatar: "",
    viewCount: "50B views",
    likeCount: "34K",
    dislikeCount: "2K",
  ),
  YoutubeModel(
    title: "MESSI BEST GOALS",
    description: "",
    thumbNail: "images/v2.jpg",
    publishedTime: "1 hour ago",
    channelTitle: "MESSI",
    channelAvatar: "",
    viewCount: "100B views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
  YoutubeModel(
    title: "NEYMAR BEST GOALS",
    description: "",
    thumbNail: "images/v3.jpg",
    publishedTime: "6 days ago",
    channelTitle: "NEYMAR",
    channelAvatar: "",
    viewCount: "90B views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
];