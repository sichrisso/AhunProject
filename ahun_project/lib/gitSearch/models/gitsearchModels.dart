import 'package:flutter/material.dart';

class GitSearch {
  final int id;
  final String profile;
  final String octocat;
  final String username;
  final String? bio;
  final String? location;
  final String JoinedDate;
  final int Repo;
  final int followers;
  final int following;
  final String? htmlUrl;
  final String? twitter;
  final String? company;

  GitSearch(
      {required this.id,
      required this.profile,
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
      profile: json['avatar_url'],
      octocat: json['name'],
      username: json['login'],
      bio: json['bio'],
      location: json['location'],
      JoinedDate: json['created_at'],
      Repo: json['public_repos'],
      followers: json['followers'],
      following: json['following'],
      htmlUrl: json['html_url'],
      twitter: json['twitter_username'],
      company: json['company'],
    );
  }
}
