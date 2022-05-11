part of 'pages.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  bool skipChange = false;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: const [
                OnboardingItems(
                  imageUrl: 'assets/image_onboarding1.png',
                  title: 'Buy Furniture Easily',
                  subtitle:
                      "Aliqua id fugiat nostrud irure ex duis\nea quis id quis ad et. Sunt qui esse",
                ),
                OnboardingItems(
                  imageUrl: 'assets/image_onboarding2.png',
                  title: 'Fast Delivery',
                  subtitle:
                      "Aliqua id fugiat nostrud irure ex duis\nea quis id quis ad et. Sunt qui esse",
                ),
                OnboardingItems(
                  imageUrl: 'assets/image_onboarding3.png',
                  title: 'Best Price',
                  subtitle:
                      "Aliqua id fugiat nostrud irure ex duis\nea quis id quis ad et. Sunt qui esse",
                )
              ],
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: controller,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                skipChange == true
                    ? TextButton(
                        onPressed: () {
                          if (currentIndex == 2) {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/signin', (route) => false);
                          } else {
                            controller.animateToPage(2);
                          }
                        },
                        child: Text(
                          'SKIP',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : Container(
                        width: 57,
                      ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamed(context, '/signin');
                    } else {
                      controller.nextPage();
                      setState(() {
                        skipChange = true;
                      });
                    }
                  },
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 29,
          )
        ],
      ),
    );
  }
}
