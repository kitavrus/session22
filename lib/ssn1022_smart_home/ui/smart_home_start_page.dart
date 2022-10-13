import 'package:flutter/material.dart';

class SmartHomeStartPage extends StatefulWidget {
  const SmartHomeStartPage({Key? key}) : super(key: key);

  @override
  State<SmartHomeStartPage> createState() => _SmartHomeStartPageState();
}

class _SmartHomeStartPageState extends State<SmartHomeStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
              ),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.apps_outlined),
                  ),
                  Expanded(
                      child: Column(
                    children: const [
                      Text(
                        "Hello Amigo",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("Friday, 13 2022"),
                    ],
                  )),
                  const CircleAvatar(
                    radius: 27,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 72,
          child: Row(
            children: const [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
