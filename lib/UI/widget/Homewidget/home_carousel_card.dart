part of '../widget.dart';

class HomeCarouselCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String urlImage;
  const HomeCarouselCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 102,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        subtitle,
                        style: greyTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            urlImage,
            height: 130,
          )
        ],
      ),
    );
  }
}
