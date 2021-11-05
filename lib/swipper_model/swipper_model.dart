class SwipperModel {
  String? title;
  String? description;
  String? url;

  SwipperModel({this.title, this.description, this.url});

  factory SwipperModel.fromJson(Map<String, dynamic> json) => SwipperModel(
        title: json['title'] as String?,
        description: json['description'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'url': url,
      };
}
