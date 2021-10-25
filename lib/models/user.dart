class UserDetail
{
  final int userId;
  final int id;
  final String title;
  final String body;


  UserDetail({required this.userId, required this.id, required this.title, required this.body});


  factory UserDetail.fromJson(Map<String, dynamic> json) {
    return UserDetail(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

}