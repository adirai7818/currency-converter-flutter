
import 'package:flutter/material.dart';
//1.create a variable that stores the converted currency value
  //2. create a function the multiplies the value given by the textfield
  //3. store the value in the variable that we created
  //4. display the variable
class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
    
  
}
class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context){
      print('rebuilt');
     final border = OutlineInputBorder(
      //Color(0xAARRGGBB)
                      //0xFF00000
                      borderSide: const BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ); 
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey ,
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
        
      ),
       body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
                
                Padding(
                  padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: textEditingController,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Please enter the amount in USD',
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          prefixIcon: const Icon(Icons.monetization_on_outlined),
                          prefixIconColor: Colors.black,
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: border,
                          enabledBorder: border,
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                    ),
                     //button
                     //raised
                     //appears like a text
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ElevatedButton(onPressed: () {
                      
                       setState(() {
                         result = double.parse(textEditingController.text) * 81; 
                       });
                       }, 
                       style:  ElevatedButton.styleFrom(
                         backgroundColor: Colors.black,
                         foregroundColor:Colors.white,
                         minimumSize: const  Size(double.infinity, 50),
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                         ),
                         ),
                         child: const Text('Convert'),
                         ),
                         ),
                        ], 
                       ),
                     ),   
            );  
  }
  }

  