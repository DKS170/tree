import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Column(
                children: [
                  Text('Всего посажено'),
                  Text(
                    '105',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              )),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text('Список моих деревьев'),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Column(
              children: [MyWidget(), MyWidget()],
            ),
          ),
        ),
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                color: Color(0xffECEEEC),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Имя",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Заказ №523"),
            Text("Цом 3 мкр"),
            Text("data")
          ],
        )
      ],
    );
  }
}
