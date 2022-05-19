part of 'pages.dart';

class MyPages extends StatefulWidget {
  const MyPages({Key? key}) : super(key: key);

  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _getWidget() {
    if (currentIndex == 1) {
      return const ProfilePage();
      // SearchPage(
      //   hasInternet: hasInternet,
      //   hasconnection: hasconnection(),
      // );
    } else if (currentIndex == 2) {
      return const WishListPage();
      // Favoritepage(
      //   hasInternet: hasInternet,
      //   hasconnection: hasconnection(),
      // );
    }
    return const HomePage();
    // Home(
    //   hasInternet: hasInternet,
    //   hasconnection: hasconnection(),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: _getWidget(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          selectedItemColor: kYellowColor,
          unselectedItemColor: kGreyColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kBlackColor,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
                size: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart_fill,
                size: 24,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_fill,
                size: 24,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
