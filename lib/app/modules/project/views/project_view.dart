import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../controllers/project_controller.dart';

class ProjectView extends GetView<ProjectController> {
  const ProjectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Projects'),
          backgroundColor: Color(0xFF210D41),
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Color(0xFF210D41),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '1. Build A Catalogue Mobile Application',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/mob.jpg',
                        height: 500,
                      ),
                      TextButton(
                          onPressed: () {
                            launchUrlString(
                                'https://drive.google.com/file/d/1j-V3EgXqU1ZQTKJYn3DT-slin6b6u_YL/view');
                          },
                          child: Text('Click Here To View Project')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '2. Build A Food Delivery App',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/food.jpg',
                        height: 500,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '3. Build A Expense Planner App',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/expo.jpg',
                        height: 500,
                      ),TextButton(
                          onPressed: () {
                            launchUrlString(
                                'https://drive.google.com/file/d/1mIeO79SoQuzEAU05hgWYCQz_huMHwY8H/view?usp=drivesdk');
                          },
                          child: Text('Click Here To View Project')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '4. Build Telegram clone (Front-end)',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/tele.jpg',
                        height: 500,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '5. Build To-Do List Website',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/todo.jpg',
                      ),
                      TextButton(
                          onPressed: () {
                            launchUrlString(
                                'https://nainwaya-todo-list.netlify.app/?');
                          },
                          child: Text('Click Here To View Project')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        '6. Build My personal portfolio website',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/portfolio.jpg',
                      ),
                      TextButton(
                          onPressed: () {
                            launchUrlString(
                                'https://portfolio-harshnainwaya.netlify.app/');
                          },
                          child: Text('Click Here To View Project')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
