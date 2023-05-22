import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_portfolio/app/modules/about/views/about_view.dart';
import 'package:personal_portfolio/app/modules/achievement/views/achievement_view.dart';
import 'package:personal_portfolio/app/modules/project/views/project_view.dart';
import 'package:personal_portfolio/app/modules/skills/views/skills_view.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../controllers/home_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  // Widget drawer(BuildContext context) {
  //   return Drawer(
  //     child: Column(
  //       children: [
  //         UserAccountsDrawerHeader(
  //             accountName: Text('Harsh Nainwaya'),
  //             accountEmail: Text('nainwayaharsh2003@gmail.com'))
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF210D41),
      drawer: Drawer(
        backgroundColor: Color(0xFF210D41),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF210D41)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/img1.jpg'),
              ),
              accountName: Text('Harsh Nainwaya'),
              accountEmail: Text('nainwayaharsh2003@gmail.com'),
            ),
            ListTile(
              onTap: () {
                Get.to(() => AboutView());
              },
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                Icons.account_circle_outlined,
                size: 33,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: Text(
                'About Me',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Get.to(() => SkillsView());
              },
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                Icons.computer_rounded,
                size: 33,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: Text(
                'Skills',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Get.to(() => ProjectView());
              },
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                Icons.code_rounded,
                size: 33,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: Text(
                'Projects',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Get.to(() => AchievementView());
              },
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                Icons.stars_rounded,
                size: 33,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: Text(
                'Achievements',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                launchUrlString(
                    'https://www.linkedin.com/in/harsh-nainwaya-966714252');
              },
              tileColor: Color(0xfff0072b1),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                CupertinoIcons.link,
                size: 33,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: Text(
                'Linkedin',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                launchUrlString(
                    'https://instagram.com/harsh_the_game?igshid=NTc4MTIwNjQ2YQ==');
              },
              tileColor: Color(0xfff962fbf),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                CupertinoIcons.link,
                size: 33,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: Text(
                'Instagram',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.58,
                child: Image.asset(
                  'assets/images/home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      print("Drawer");
                      // drawer(context);
                    },
                    icon: Icon(
                      Icons.swipe_left,
                      size: 30,
                    ),
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Swipe The Below Area for more Cards',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.372,
            child: LiquidSwipe(pages: [
              Container(
                color: Color(0xFF210D41),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      print('About me');
                      Get.to(() => AboutView());
                    },
                    child: Container(
                      width: 230,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(
                            (0xFFFFB300),
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            size: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'About Me',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      // color: Colors.red,
                    ),
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 142, 31, 68),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => SkillsView());
                    },
                    child: Container(
                      width: 230,
                      height: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.computer_rounded,
                            size: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Skills',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      // color: Colors.red,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => ProjectView());
                      print('Projects');
                    },
                    child: Container(
                      width: 230,
                      height: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.code_rounded,
                            size: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Projects',
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      // color: Colors.red,
                    ),
                  ),
                ),
              ),
              Container(
                color: Color(0xFF5D005D),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => AchievementView());
                      print('Projects');
                    },
                    child: Container(
                      width: 230,
                      height: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.stars_rounded,
                            size: 50,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Achievements',
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                      // color: Colors.red,
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
