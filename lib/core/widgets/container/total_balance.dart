import 'package:flutter/material.dart';

class totalBalance extends StatelessWidget {
  const totalBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Posisikan semua konten Stack di tengah
      children: [
        Container(
          height: 160,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/background.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Balance",
              style: TextStyle(
                color: Color.fromARGB(180, 255, 255, 255),
              ),
            ),
            Text(
              "₦ 100,000.00",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
