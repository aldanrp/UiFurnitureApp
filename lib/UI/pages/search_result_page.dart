part of 'pages.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              DefaultTabController(
                length: 4,
                child: Container(
                  width: double.infinity,
                  height: 110,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  color: kWhiteColor,
                  child: AppBar(
                    backgroundColor: kWhiteColor.withOpacity(0),
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
                                    textInputAction: TextInputAction.go,
                                    onFieldSubmitted: (value) {
                                      Navigator.pushNamed(
                                          context, '/search-result');
                                    },
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
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Image.asset(
                          'assets/icon_filter.png',
                          width: 24,
                        )
                      ],
                    ),
                    bottom: TabBar(
                      indicatorColor: kBlackColor,
                      labelColor: kBlackColor,
                      isScrollable: true,
                      tabs: const [
                        Tab(
                          text: "Chair",
                        ),
                        Tab(
                          text: "Table",
                        ),
                        Tab(
                          text: "Accessories",
                        ),
                        Tab(
                          text: "Living Room",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
