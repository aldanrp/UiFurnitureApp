part of '../widget.dart';

class PopularCard extends StatelessWidget {
  final String title;
  final int price;
  final String urlImage;
  final bool isWishlist;

  const PopularCard(
      {Key? key,
      required this.title,
      required this.price,
      required this.urlImage,
      required this.isWishlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Image.asset(
                  urlImage,
                  width: 160,
                ),
              ),
            ),
            Container(
              width: 200,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Image.asset(
                        isWishlist
                            ? 'assets/button_wishlist_active.png'
                            : 'assets/button_wishlist.png',
                        width: 44,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
