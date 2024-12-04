import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lifeline/gen/assets.gen.dart';
import 'package:lifeline/view/onboard/widget/custom_onboards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final pageController = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (currentPage != 2)
            TextButton(
              onPressed: () {
                pageController.jumpToPage(2);
              },
              child: const Text("Skip"),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: [
                  CustomOnboards(
                    image: Assets.images.onboardOne.image(),
                    title: "Find your blood match",
                    desc:
                        "Search for blood donors by blood type. Connect with those who can make a difference",
                  ),
                  CustomOnboards(
                    image: Assets.images.onboardTwo.image(),
                    title: "Real-time Donor Availability",
                    desc:
                        "Real-time updates on donor status. Find donors when you need them most.",
                  ),
                  CustomOnboards(
                    image: Assets.images.onboardThree.image(),
                    title: "Locate Donors Around You",
                    desc:
                        "Find nearby donors with ease. Locate blood donors in your local area.",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  shape: currentPage != 2
                      ? const CircleBorder()
                      : RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                ),
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                },
                child: currentPage != 2
                    ? Icon(
                        Icons.arrow_right_alt,
                        color: theme.colorScheme.onPrimary,
                      )
                    : Text(
                        "Login",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
              ),
            ),
            const Gap(40),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                activeDotColor: theme.colorScheme.primary,
                dotColor: theme.colorScheme.primary.withOpacity(.6),
              ),
            ),
            const Gap(20)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
