part of 'pages.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: kBlackColor,
              ),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration.collapsed(
                            hintText: "Search Furniture",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 41,
            ),
            Text(
              "Recommendation",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RecommendedItems(
              title: "Poan Chair",
              price: 34,
              urlImage: 'assets/image_product_list1.png',
            ),
            const RecommendedItems(
              title: "Poan Chair",
              price: 35,
              urlImage: 'assets/image_product_list2.png',
            ),
            const RecommendedItems(
              title: "Poan Chair",
              price: 33,
              urlImage: 'assets/image_product_list3.png',
            ),
            const RecommendedItems(
              title: "Poan Table",
              price: 32,
              urlImage: 'assets/image_product_list4.png',
            ),
          ],
        ),
      ),
    );
  }
}
