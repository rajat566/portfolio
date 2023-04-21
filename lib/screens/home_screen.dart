import 'dart:convert';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/constants/my_flutter_app_icons.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "PortFolio",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        // foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 225,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/cover2.jpg",
                  ),
                  fit: BoxFit.fill,
                ),

                // gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   colors: [
                //     // kGradient1,
                //     //kGradient2,
                //   ],
                // ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
                child: Text(
              "@$username",
              style: kSubTitleText,
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.greenAccent, //<-- SEE HERE
                    ),
                    onPressed: () async {
                      final _url = 'https://flutter.dev';
                      void _launchURL(String url) async => await canLaunch(_url)
                          ? await launch(_url)
                          : throw 'Could not launch $_url';
                      _launchURL(_url);

                      //Code to launch resume
                      //  final Uri _url = Uri.parse(resumeLink);
                    },
                    child: Text(
                      "View Resume",
                      style: kSubTitleText,
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final Uri _phoneLaunchUri =
                          Uri(scheme: 'tel', path: '6260175117');
                      _makeSocialMediaRequest(_phoneLaunchUri.toString());
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutWorkExperience),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutMeSummary),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Location",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle,
                                                size: 16,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                location,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Linkedln",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(linkin),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "GitHub",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(Github),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(
                                                Icons.launch,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Email",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(email),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              // const Icon(
                                              // Icons.launch,
                                              //  size: 11,
                                              //  )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Material(
                                                  type:
                                                      MaterialType.transparency,
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                        //  color: Colors.greenAccent,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                50.0)), //<-- SEE HERE
                                                    child: InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      onTap: () {
                                                        final _url =
                                                            'https://instagram.com';
                                                        void _launchURL(
                                                                String
                                                                    url) async =>
                                                            await canLaunch(
                                                                    _url)
                                                                ? await launch(
                                                                    _url)
                                                                : throw 'Could not launch $_url';
                                                        _launchURL(_url);
                                                        // final url = 'https://instagram.com';
                                                        // openBrowserURL(url: url, inApp: true);
                                                      },
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Icon(
                                                          MyFlutterApp
                                                              .instagram,
                                                          size: 23.0,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Material(
                                                  type:
                                                      MaterialType.transparency,
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                        //  color: Colors.greenAccent,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                50.0)), //<-- SEE HERE
                                                    child: InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      onTap: () {
                                                        final _url =
                                                            'https://in.linkedin.com/';
                                                        void _launchURL(
                                                                String
                                                                    url) async =>
                                                            await canLaunch(
                                                                    _url)
                                                                ? await launch(
                                                                    _url)
                                                                : throw 'Could not launch $_url';
                                                        _launchURL(_url);
                                                        // final url = 'https://instagram.com';
                                                        // openBrowserURL(url: url, inApp: true);
                                                      },
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Icon(
                                                          MyFlutterApp.linkedin,
                                                          size: 23.0,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Material(
                                                  type:
                                                      MaterialType.transparency,
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                        //  color: Colors.greenAccent,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                50.0)), //<-- SEE HERE
                                                    child: InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      onTap: () {
                                                        final Uri
                                                            _emailLaunchUri =
                                                            Uri(
                                                                scheme:
                                                                    'mailto',
                                                                path:
                                                                    'arajat958',
                                                                queryParameters: {
                                                              'subject': 'Rajat'
                                                            });
                                                        _makeSocialMediaRequest(
                                                            _emailLaunchUri
                                                                .toString());
                                                        // final url = 'https://instagram.com';
                                                        // openBrowserURL(url: url, inApp: true);
                                                      },
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Icon(
                                                          MyFlutterApp
                                                              .google_plus_g,
                                                          size: 23.0,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Material(
                                                  type:
                                                      MaterialType.transparency,
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                        //  color: Colors.greenAccent,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                50.0)), //<-- SEE HERE
                                                    child: InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      onTap: () {
                                                        final _url =
                                                            'https://github.com/rajat566';
                                                        void _launchURL(
                                                                String
                                                                    url) async =>
                                                            await canLaunch(
                                                                    _url)
                                                                ? await launch(
                                                                    _url)
                                                                : throw 'Could not launch $_url';
                                                        _launchURL(_url);
                                                        // final url = 'https://instagram.com';
                                                        // openBrowserURL(url: url, inApp: true);
                                                      },
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Icon(
                                                          MyFlutterApp.git_1,
                                                          size: 23.0,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutWorkExperience,
                                  style: GoogleFonts.lato()),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.circle,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              location,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Github",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(Github),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Linkedln",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(linkin),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Email",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(email),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2),
                                                      //  color: Colors.greenAccent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0)), //<-- SEE HERE
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    onTap: () {
                                                      final _url =
                                                          'https://www.instagram.com/';
                                                      void _launchURL(
                                                              String
                                                                  url) async =>
                                                          await canLaunch(_url)
                                                              ? await launch(
                                                                  _url)
                                                              : throw 'Could not launch $_url';
                                                      _launchURL(_url);
                                                      // final url = 'https://instagram.com';
                                                      // openBrowserURL(url: url, inApp: true);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Icon(
                                                        MyFlutterApp.instagram,
                                                        size: 23.0,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2),
                                                      //  color: Colors.greenAccent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0)), //<-- SEE HERE
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    onTap: () {
                                                      final _url =
                                                          'https://in.linkedin.com/';
                                                      void _launchURL(
                                                              String
                                                                  url) async =>
                                                          await canLaunch(_url)
                                                              ? await launch(
                                                                  _url)
                                                              : throw 'Could not launch $_url';
                                                      _launchURL(_url);
                                                      // final url = 'https://instagram.com';
                                                      // openBrowserURL(url: url, inApp: true);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Icon(
                                                        MyFlutterApp.linkedin,
                                                        size: 23.0,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2),
                                                      //  color: Colors.greenAccent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0)), //<-- SEE HERE
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    onTap: () {
                                                      final Uri
                                                          _emailLaunchUri = Uri(
                                                              scheme: 'mailto',
                                                              path:
                                                                  'arajat958@gmail.com',
                                                              queryParameters: {
                                                            'subject': 'Rajat'
                                                          });
                                                      _makeSocialMediaRequest(
                                                          _emailLaunchUri
                                                              .toString());
                                                      // final url = 'https://instagram.com';
                                                      // openBrowserURL(url: url, inApp: true);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Icon(
                                                        MyFlutterApp
                                                            .google_plus_g,
                                                        size: 23.0,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Material(
                                                type: MaterialType.transparency,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2),
                                                      //  color: Colors.greenAccent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0)), //<-- SEE HERE
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    onTap: () {
                                                      final _url =
                                                          'https://github.com/rajat566';
                                                      void _launchURL(
                                                              String
                                                                  url) async =>
                                                          await canLaunch(_url)
                                                              ? await launch(
                                                                  _url)
                                                              : throw 'Could not launch $_url';
                                                      _launchURL(_url);

                                                      // final url = 'https://instagram.com';
                                                      // openBrowserURL(url: url, inApp: true);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Icon(
                                                        MyFlutterApp.git_1,
                                                        size: 23.0,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 800
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 3),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                          );
                        })
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 2),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                          );
                        }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makeSocialMediaRequest(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
