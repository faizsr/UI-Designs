import 'package:flutter/material.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: AppBar(
            centerTitle: true,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Dukaan Premium',
                style: TextStyle(fontSize: 20),
              ),
            ),
            leading: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.arrow_back_sharp,
                size: 30,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade200, width: 1),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5.0),
              ]),
          margin: const EdgeInsets.only(
            top: 70,
            left: 18,
            right: 18,
          ),
          height: 220,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 190,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Get Dukaan Premium for just \u{20B9}4,999/year',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'All the advanced features for scaling your business',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}
