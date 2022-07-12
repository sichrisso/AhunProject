import 'package:ahun_project/presentation/common/color.dart';
import 'package:ahun_project/presentation/common/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.Color3,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "devfinder",
                    style: TextStyle(color: AppColor.Color2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "LIGHT",
                        style: TextStyle(color: AppColor.Color2),
                      ),
                      Image.asset(
                        "assets/icon-sun.svg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                cursorColor: AppColor.Color2,
                cursorRadius: Radius.circular(5.0),
                style: TextStyle(color: AppColor.Color2),
                decoration: InputDecoration(
                    hintText: "Search GitHub username...",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColor.Color1,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: AppColor.Color1,
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Search",
                                style: TextStyle(color: AppColor.Color2),
                              ))),
                    ),
                    filled: true,
                    fillColor: AppColor.Color4),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColor.Color4),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.teal),
                          child: Icon(
                            Icons.home_filled,
                            color: Colors.white,
                          ),
                        ),
                      // Container(
                      //   height: 100,
                      //   width: 100,
                      //   color: Colors.white,
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(50),
                      //     // child: Image.asset(
                      //     //   "assets/icon-company.svg",
                      //     //   fit: BoxFit.cover,
                      //     // ),
                      //   ),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "The Octocat",
                                style: AppFont.font1,
                              ),
                              Text("Joined 25 Jan 2011", style: AppFont.font5)
                            ],
                          ),
                          Text("@octocat", style: AppFont.font3),
                          SizedBox(height: 5),
                          Text("This profile has no bio", style: AppFont.font2),
                          SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.Color4,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Repos", style: AppFont.font4),
                                      Text("Followers", style: AppFont.font4),
                                      Text("Folowing", style: AppFont.font4)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("8", style: AppFont.font2),
                                      Text("3938", style: AppFont.font2),
                                      Text("9", style: AppFont.font2)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icon-location.svg",
                                        fit: BoxFit.cover,
                                      ),
                                      Text("San Francisco",
                                          style: AppFont.font2)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icon-website.svg",
                                        fit: BoxFit.cover,
                                      ),
                                      Text("https://github.blog",
                                          style: AppFont.font2)
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icon-twitter.svg",
                                        fit: BoxFit.cover,
                                      ),
                                      Text("Not Available",
                                          style: AppFont.font2)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icon-company.svg",
                                        fit: BoxFit.cover,
                                      ),
                                      Text("agithub", style: AppFont.font2)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}