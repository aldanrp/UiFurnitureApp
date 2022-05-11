part of 'widget.dart';

class OnboardingItems extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const OnboardingItems(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 85),
        Image.asset(
          imageUrl,
          width: double.infinity,
        ),
        const SizedBox(
          height: 110,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
