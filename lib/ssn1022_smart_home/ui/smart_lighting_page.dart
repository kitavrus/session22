import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SmartLightingPage extends StatefulWidget {
  const SmartLightingPage({Key? key}) : super(key: key);

  @override
  State<SmartLightingPage> createState() => _SmartLightingPageState();
}

class _SmartLightingPageState extends State<SmartLightingPage> {
  var condition = true;
  String _deviceType = "Panasonic smart lighting";

  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  double _slider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: const [
            Text("Smart Lighting"),
            Text("Living R"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Container(
            height: 38,
            // width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300]!,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: DropdownButton<String>(
              underline: Container(),
              items: const [
                DropdownMenuItem(
                  value: "Panasonic smart lighting",
                  child: Text("Panasonic smart lighting"),
                ),
                DropdownMenuItem(
                  value: "Sony smart lighting",
                  child: Text("Sony smart lighting"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _deviceType = value ?? "";
                });
              },
              value: _deviceType,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                const Text(
                  "Device condition",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(condition ? "on" : "off"),
                Switch(
                    value: condition,
                    onChanged: (v) {
                      setState(() {
                        condition = v;
                      });
                    }),
              ],
            ),
          ),
          // height: 300,
          // width: 300,
          // color: Colors.blue,
          ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: (Color value) {
              setState(() {
                pickerColor = value;
              });
            },
            displayThumbColor: false,
            hexInputBar: false,
            enableAlpha: false,
            paletteType: PaletteType.hueWheel,
            portraitOnly: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sunny),
                Text("${_slider.toStringAsFixed(0)}%"),
              ],
            ),
          ),
          Slider(
              min: 0.0,
              max: 100,
              value: _slider,
              onChanged: (v) {
                setState(() {
                  _slider = v;
                });
              }),
          Text("Schedule time"),
        ],
      ),
    );
  }
}
