class GitSearch {
  final int id;
  final String octocat;
  final String username;
  final String bio;
  final String location;
  final String JoinedDate;
  final int Repo;
  final int followers;
  final int following;
  final String htmlUrl;
  final String twitter;
  final String company;

  GitSearch(
      {required this.id,
      required this.octocat,
      required this.username,
      required this.bio,
      required this.location,
      required this.JoinedDate,
      required this.Repo,
      required this.followers,
      required this.following,
      required this.htmlUrl,
      required this.twitter,
      required this.company});

  factory GitSearch.fromJson(Map<String, dynamic> json) {
    return GitSearch(
      id: json['id'],
      octocat: json['octocat'],
      username: json['username'],
      bio: json['bio'],
      location: json['location'],
      JoinedDate: json['JoinedDate'],
      Repo: json['Repo'],
      followers: json['followers'],
      following: json['following'],
      htmlUrl: json['htmlUrl'],
      twitter: json['twitter'],
      company: json['company'],
    );
  }
}
