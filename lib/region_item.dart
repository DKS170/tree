import 'package:flutter/material.dart';

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, top: 16, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Зона парка Жастар',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 121, 45),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlantTree(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlantTree2(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PlantTree extends StatelessWidget {
  const PlantTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://avatars.mds.yandex.net/i?id=34ca0351a3270d85f7b68fb67e4748d3-5858228-images-thumbs&n=13')
                        .image),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Парк Жастар, Амфитеатр',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text(
                      'Флаг, поднятый на высоту 92 метра, установлен на флагштоке, в "Этноауле" нового парка "Жастар"',
                      style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('100',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color.fromARGB(255, 5, 121, 45))),
                      Text('деревьев посажено',
                          style: TextStyle(
                            fontSize: 10,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('3000 ТГ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color.fromARGB(255, 5, 121, 45))),
                      Text('стоимость одного дерева',
                          style: TextStyle(fontSize: 10))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('12 тонн',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 5, 121, 45))),
                  Text('Кислорода будет произведено',
                      style: TextStyle(fontSize: 10))
                ],
              ),
            )
          ],
        ),
        const Align(
          child: TreePlaceButton(),
        )
      ],
    );
  }
}

///////
class PlantTree2 extends StatelessWidget {
  const PlantTree2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://avatars.mds.yandex.net/i?id=34ca0351a3270d85f7b68fb67e4748d3-5858228-images-thumbs&n=13')
                        .image),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Парк жастар, ул. Балапанова',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text('Вход со стороны улицы Балапанова',
                      style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color.fromARGB(255, 5, 121, 45))),
                      Text('деревьев посажено',
                          style: TextStyle(
                            fontSize: 10,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('3000 ТГ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color.fromARGB(255, 5, 121, 45))),
                      Text('стоимость одного дерева',
                          style: TextStyle(fontSize: 10))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('6 тонн',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromARGB(255, 5, 121, 45))),
                  Text('Кислорода будет произведено',
                      style: TextStyle(fontSize: 10))
                ],
              ),
            )
          ],
        ),
        const Align(
          child: TreePlaceButton(),
        )
      ],
    );
  }
}

//////
class TreePlaceButton extends StatelessWidget {
  const TreePlaceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          const Text('ss');
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.maxFinite,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 5, 121, 45),
              borderRadius: BorderRadius.all(Radius.circular(7))),
          child: const Text(
            'Посадить дерево здесь',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
