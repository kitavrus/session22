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
      backgroundColor: Colors.white,
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
            ),
            Container(
              margin: EdgeInsets.all(16),
              height: 160,
              // color: Colors.red,
              decoration: BoxDecoration(color: Colors.grey[100]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 80,
          child: Row(
            children: [
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_outlined),
                iconSize: 32,
                color: Colors.blueAccent,
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.pie_chart_outline),
                iconSize: 32,
                color: Colors.grey,
              )),
              Expanded(
                  child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.mic_none),
                color: Colors.grey,
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_outlined),
                color: Colors.grey,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
