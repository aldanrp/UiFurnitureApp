part of 'pages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  bool _visibiltyName = false;

  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _visibiltyName = true;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: _visibiltyName == true
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInRight(
                    duration: const Duration(milliseconds: 600),
                    child: Container(
                      width: 98,
                      height: 82,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo_light.png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 1500),
                    child: Text(
                      "Space",
                      style: whiteTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: bold,
                      ),
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 98,
                    height: 82,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo_light.png'),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
