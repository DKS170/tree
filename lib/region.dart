import 'package:flutter/material.dart';
import 'package:new2/region_item.dart';

class Regions extends StatefulWidget {
  const Regions({super.key});

  @override
  State<Regions> createState() => _RegionsState();
}

class _RegionsState extends State<Regions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Region'),
        ),
        body: const SingleChildScrollView(
          child: Stack(
            children: [
              Body2(),
            ],
          ),
        ));
  }
}
