part of '../widget.dart';

class RecommendedItems extends StatelessWidget {
  final String title;
  final int price;
  final String urlImage;

  const RecommendedItems({
    Key? key,
    required this.title,
    required this.price,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Image.asset(
            urlImage,
            width: 60,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$$price',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
