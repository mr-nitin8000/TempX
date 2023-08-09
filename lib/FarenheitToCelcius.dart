import 'package:flutter/material.dart';
import 'CelciusToFarenheit.dart';
 class FarenheitToCelcius extends StatefulWidget {
   const FarenheitToCelcius({super.key});

   @override
   State<FarenheitToCelcius> createState() => _FarenheitToCelciusState();
 }

 class _FarenheitToCelciusState extends State<FarenheitToCelcius> {

   // Initialization of controller
   TextEditingController _fer = TextEditingController();

   double? farenheit ;
   String text = "..";


   void calculate(){
     double? result =  (5*(farenheit! - 32))/9;
     result =  double.parse((result).toStringAsFixed(2));
     setState(() {
       var r = "Result: $result℃ ";
       text = r.toString();

     });
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           primary: true,

           title: Text("Farenheit - To - Celcius"),
           backgroundColor:Color(0xFF212555),
           foregroundColor: Color(0xFFFFFFFF),
           leading: Transform.scale(
             scale: 0.8,
             child: Image.asset('images/Logo.png'),
           ),
           actions: [
             IconButton(onPressed: (){
               Navigator.pop(context);
             }, icon: Icon(Icons.compare_arrows))
           ],

         ),
         body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
               child: TextField(
                 controller: _fer,
                 keyboardType: TextInputType.number,

                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.edit_outlined),
                   suffixText: "℉",
                   labelText: 'FARENHEIT ',
                   labelStyle: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                       backgroundColor: Color(0xFFC3C3E5),
                       color: Color(0xFF212555)
                   ),

                   fillColor: Color(0xFFC3C3E5),
                   filled: true,
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                       borderSide: BorderSide(
                           width: 2.0
                       )
                   ),

                 ),
               ),
             ),
             Center(child: Text("X",
               style: TextStyle(
                   fontSize: 20
               ),
             )
             ),

             Padding(

               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
               child: Center(
                   child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         width: 420,
                         height: 60,
                         // padding: const EdgeInsets.all(16.0),
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             colors: [Color(0xFF212555), Color(0x67687CFF)],
                             begin: Alignment.bottomLeft,
                             end: Alignment.topRight,
                           ),
                           border: Border.all(width: 2, color:  Color(0xFF212555)),
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                         ),
                         child: Center(
                           child: Text(
                             text,
                             style: TextStyle(
                                 color: Color(0xFFC3C3E5),
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.bold
                             ),
                           ),
                         ),
                       )
                   )
               ),
             ),
             Padding(

                 padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                 child: Center(
                   child: ElevatedButton(onPressed: (){
                     farenheit = double.parse(_fer.text.toString());
                     calculate();

                   },
                       child: Text("Convert")
                   ),
                 )
             ),

           ],
         )
     );
   }
 }