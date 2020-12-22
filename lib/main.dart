import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SleekSlider(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SleekSlider extends StatelessWidget {
  Widget slider1 = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      size: 200,
      startAngle: 270,
      angleRange: 360,
      customWidths: CustomSliderWidths(
        progressBarWidth: 10,
      ),
      customColors: CustomSliderColors(
        hideShadow: true,
        trackColor: Colors.red,
        progressBarColor: Colors.redAccent,
        shadowMaxOpacity: 20,
      ),
      infoProperties: InfoProperties(
        topLabelText: 'Pomodoro',
        topLabelStyle: TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),
      ),
    ),
    initialValue: 25,
    onChange: (double value){
      print(value);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: slider1,
            ),
          ],
        ),
      ),
    );
  }
}





