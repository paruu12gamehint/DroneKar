import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insidefpv/constant.dart';

import '../features/Rigster/phoneNumber.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 35),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => OnBoardingContent(
                        images: demo_data[index].image,
                        title: demo_data[index].title)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    ...List.generate(
                        demo_data.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: DotIndicator(
                                isActive: index == _pageIndex,
                              ),
                            )),
                    Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                          if (_pageIndex == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhoneNumber()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Colors.indigo),
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : kPrimaryColor.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class OnBoard {
  final String image, title;
  OnBoard({
    required this.image,
    required this.title,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
      image: "assets/images/drone_1.png",
      title: "Start Your Fpv Joureny \nWith Us"),
  OnBoard(image: "assets/images/drone_2.png", title: "Plug & Fly Drone "),
  OnBoard(image: "assets/images/drone_3.png", title: "No Pilot Liencse"),
];

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.images,
    required this.title,
  });

  final String images, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          images,
          height: 250,
        ),
        Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
          ),
        ),
        Spacer()
      ],
    );
  }
}
