import 'package:flutter/material.dart';
import 'package:shoehub/utilis/color.dart';
import 'package:shoehub/view/home_view/home_view.dart';
import 'package:shoehub/view/main_view/main_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://www.visualcapitalist.com/wp-content/uploads/2022/10/OC_MostValuableBrands_2022_Shareable_ValuableBrands2022.jpg",
              height: 500,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Shoes ',
                      style: TextStyle(
                          color: kgreyClr,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          wordSpacing: 1.5),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'hub',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                wordSpacing: 1.5,
                                fontSize: 40,
                                color: kblackClr)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Style that walks with you,\ncomfort that carries you,Shoes\nfor every step",
                    style: TextStyle(
                        fontSize: 18,
                        color: kgreyClr,
                        height: 1.3,
                        letterSpacing: 1.5,
                        wordSpacing: 1.5),
                  ),
                  const SizedBox(height: 100),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainView(),
                          ));
                    },
                    color: kblackClr,
                    elevation: 0,
                    height: 60,
                    minWidth: double.maxFinite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: kwhiteClr,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: kwhiteClr,
                        )
                      ],
                    ),
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
