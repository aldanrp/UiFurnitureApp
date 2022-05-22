part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _getIndexcarusel = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Homepage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            //* HEADER
            Container(
              margin: const EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
              ),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/logo_dark.png'),
                    width: 53,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Space",
                    style: blackTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: bold,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icon_cart.png',
                    width: 30,
                  ),
                ],
              ),
            ),

            //* SEARCHBAR
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/search');
              },
              child: Container(
                height: 56,
                margin: const EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: kWhiteColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width / 1.8,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Search Furniture",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 44,
                      width: 50,
                      child: Center(
                        child: Image.asset(
                          "assets/icon_search.png",
                          width: 24,
                          color: kGreyColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    "Show All",
                    style: greyTextStyle,
                  ),
                ],
              ),
            ),

            //* Carousel category
            Container(
              margin: const EdgeInsets.only(
                top: 25,
                left: 24,
                right: 24,
              ),
              child: CarouselSlider(
                items: const [
                  HomeCarouselCard(
                    title: "Minimalis Chair",
                    subtitle: "Chair",
                    urlImage: "assets/image_product_category1.png",
                  ),
                  HomeCarouselCard(
                    title: "Minimalis Table",
                    subtitle: "Table",
                    urlImage: "assets/image_product_category2.png",
                  ),
                  HomeCarouselCard(
                    title: "Minimalis Chair",
                    subtitle: "Chair",
                    urlImage: "assets/image_product_category3.png",
                  ),
                ],
                options: CarouselOptions(
                    height: 140,
                    enableInfiniteScroll: false,
                    viewportFraction: 1.1,
                    onPageChanged: (value, _) {
                      setState(() {
                        _getIndexcarusel = value;
                      });
                    }),
              ),
            ),

            //* Indicator carousel
            Container(
              margin: const EdgeInsets.only(
                top: 13,
                right: 24,
                left: 24,
              ),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _getIndexcarusel == 0 ? kBlackColor : kLineDarkColor,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _getIndexcarusel == 1 ? kBlackColor : kLineDarkColor,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _getIndexcarusel == 2 ? kBlackColor : kLineDarkColor,
                    ),
                  ),
                ],
              ),
            ),

            //TODO : Popular section
            Container(
              margin: const EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(14),
                ),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 24,
                      left: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          "Show All",
                          style: greyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          PopularCard(
                            title: "Poan Chair",
                            price: 34,
                            urlImage: 'assets/image_product_popular1.png',
                            isWishlist: true,
                          ),
                          PopularCard(
                            title: "Poan Chair",
                            price: 34,
                            urlImage: 'assets/image_product_popular2.png',
                            isWishlist: false,
                          ),
                          PopularCard(
                            title: "Poan Chair",
                            price: 34,
                            urlImage: 'assets/image_product_popular3.png',
                            isWishlist: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
