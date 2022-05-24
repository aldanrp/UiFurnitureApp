part of 'pages.dart';

class MyPages extends StatefulWidget {
  final int currentIndex;
  const MyPages({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  int _currentIndex = 0;
  bool pageSelect = true;

  @override
  void initState() {
    super.initState();
    if (pageSelect == true) {
      _currentIndex = widget.currentIndex;
    }
  }

  Widget _getWidget() {
    if (_currentIndex == 1) {
      return const SearchPage();
      // SearchPage(
      //   hasInternet: hasInternet,
      //   hasconnection: hasconnection(),
      // );
    } else if (_currentIndex == 2) {
      return const WishListPage();
      // Favoritepage(
      //   hasInternet: hasInternet,
      //   hasconnection: hasconnection(),
      // );
    } else if (_currentIndex == 3) {
      return const ProfilePage();
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
          currentIndex:
              pageSelect == true ? widget.currentIndex : _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              pageSelect = false;
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
