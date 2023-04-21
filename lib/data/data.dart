import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
//Color kGradient1 = Colors.purple;
//Color kGradient2 = Colors.pinkAccent;

String imagePath = "assets/guy.png";

//String data to modify
String name = "Rajat Agrawal";
String username = "Flutter Developer";

//Link to resume on Google Drive
String resumeLink = "https://www.instagram.com/";

//Contact Email
String contactEmail = "arajat958@gmail.com";

String aboutWorkExperience = '''
I am a Flutter Developer having 6 Months of experience.

''';

String aboutMeSummary = '''
I am a Flutter Developer having 6 Months of experience. i'm currently working in Gravit Infosystems pvt Ltd. Gwalior

👉 Linkedln : rajatagrawal.in

📋 Github : rajat566

''';

String location = "Gwalior, India";
String linkin = "rajatagrawal.in";
String Github = "rajat566";
String email = "arajat958@gmail.com";

List<Project> projectList = [
  Project(
      name: "Doctor App",
      description: "Doctor Appointment App UI Design & Api Integration.",
      link: "https://github.com/rajat566/doctor"),
  Project(
      name: "Ui/Ux Design",
      description:
          "A Professional flutter projects showing many ui screens and packages",
      link: "https://github.com/rajat566"),
  Project(
      name: "Firebase",
      description: "Firebase is a set of backend cloud computing services.",
      link: "https://firebase.google.com/"),
  Project(
      name: "Flutter Portfolio",
      description: "A template for Portfolio",
      link: "https://github.com/rajat566")
];
