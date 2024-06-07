import 'package:flutter/material.dart';
import 'package:my_first_project/currency_converter_material_page.dart';


void main(){
  runApp(const MyApp()); 
  //runApp is a function //widget is a abstract class created by flutter


}
//types of widgets
//1. StatelessWidget (in terms of UI)
//2. StatefullWidget (in terms of UI)
//3. InheritedWidget (this will be used in advance level projects)
//StatelessWeight has states immutable
class MyApp extends StatelessWidget{
  const MyApp({super.key}); //key is a class that helps flutter identify and differentiate between widgets 
   //by passing a key to a constructor we explicitly assign a specific key to a specific widget instance
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }

}
// Material design - createdd by google
// cupertino design- created by apple