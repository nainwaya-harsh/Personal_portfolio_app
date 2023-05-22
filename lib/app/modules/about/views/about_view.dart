import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF210D41),
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Color(0xFF210D41),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/img2.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'About Me',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hello! I'm Harsh Nainwaya, a passionate student currently pursuing my Bachelor's degree in Computer Science from JIMS Engineering Management Technical Campus, affiliated with GGSIPU.",
                style: TextStyle(fontSize: 19, color: Colors.yellow),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "I am currently in my second year of studies and excited about the world of technology and its endless possibilities.From a young age, I have been fascinated by computers and their ability to solve complex problems.",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "This curiosity led me to choose Computer Science as my field of study, where I am gaining a strong foundation in programming, software development, and problem-solving.",
                style: TextStyle(fontSize: 19, color: Colors.pink),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Apart from my technical skills, I am a proactive learner and enjoy staying updated with the latest advancements in the field. I believe in the power of teamwork and collaboration, and I actively participate in hackathons and coding competitions to challenge myself and learn from others.",
                style: TextStyle(fontSize: 19, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "I am thrilled to be building my portfolio to showcase my projects, skills, and experiences. It is my goal to contribute to the ever-evolving tech industry, solve real-world problems, and make a positive impact on people's lives through innovative solutions",
                style: TextStyle(fontSize: 19, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Thank you for visiting my portfolio app, and I look forward to connecting with like-minded individuals and exploring exciting opportunities. Let's embark on this journey of growth and innovation together!",
                style: TextStyle(fontSize: 19, color: Colors.orange),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Connect With Me",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "1. Linkedin- harsh_nainwaya",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                "2.. Email- nainwayaharsh2003@gmail.com",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
