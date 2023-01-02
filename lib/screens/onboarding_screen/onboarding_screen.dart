import 'package:flutter/material.dart';
import 'package:grofast/screens/onboarding_screen/widgets/slider_widget.dart';
import 'package:grofast/utils/colors.dart';
import 'package:grofast/utils/images.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String button = "Next";
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List <Widget> _pages = const [
    SliderWidget(title: "Fresh groceries to your doorstep!", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", image: MyImages.imageOnboardingFirst,),
    SliderWidget(title: "Shop your daily necessary!", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.", image: MyImages.imageOnboardingSecond,),
    SliderWidget(title: "Fast Shipment to your home!", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.", image: MyImages.imageOnboardingThird,),
  ];
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget> [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: _pages.length,
              onPageChanged: _onChanged,
              itemBuilder: (context, int index) {
                return _pages[index];
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 10,
                      width: (index == _currentPage) ? 30 : 10,
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == _currentPage)
                              ? Colors.blue
                              : Colors.blue.withOpacity(0.5)
                      ),
                    );
                  }),
                ),
                InkWell(
                  onTap: () {
                    if(_currentPage == (_pages.length - 1)){
                      // Navigator.pushReplacement(
                      //     context, MaterialPageRoute(builder: (context) => const WelcomePage()));
                    }
                    else {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeInOutQuint);
                    }
                  },
                  child: Container(
                      height: 98,
                      alignment: Alignment.center,
                      width: 172,
                      decoration: BoxDecoration(
                        color: MyColors.c2BAF6F,
                        borderRadius: BorderRadius.circular(35),
                        
                      ),
                      child: (_currentPage == (_pages.length - 1))
                          ? Text(button = "Get Stardred",
                        style: const TextStyle(color: Colors.white, fontSize: 20),)
                          : const Icon(Icons.navigate_next, size: 50, color: Colors.white,)
                  ),
                ),
                const SizedBox(height: 35,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}