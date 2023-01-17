import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slider & Check')),
        body: Column(
          children: [
            Slider(
                min: 50,
                max: 500,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: _sliderEnable ? (value) {
                  _sliderValue = value;
                  setState(() {});
                } : null),
        
                // Checkbox(
                //   value: _sliderEnable, 
                //   onChanged: (value){
                //     _sliderEnable = value ?? true;
                //     setState(() {});
                //   }
                //   ),

                CheckboxListTile(
                  activeColor: AppTheme.primary,
                  title: const Text('Habilitar slider'),
                  value: _sliderEnable, 
                  onChanged: (value){
                     _sliderEnable = value ?? true;
                     setState(() {});
                  }),

                SwitchListTile(
                   activeColor: AppTheme.primary,
                  title: const Text('Habilitar slider'),
                  value: _sliderEnable, 
                  onChanged: (value){
                     _sliderEnable = true;
                     setState(() {});
                  }
                ),

                Expanded(
                  child: SingleChildScrollView
                  (
                    child: Image(
                      image: const AssetImage('assets/images/HarryPotter.png'),
                      fit: BoxFit.contain,
                      width: _sliderValue,
                      ),
                  ),
                ),
          ],
        ));
  }
}
