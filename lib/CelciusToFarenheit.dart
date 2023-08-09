import 'package:flutter/material.dart';
import 'FarenheitToCelcius.dart';
import 'DescPage.dart';
class CelciusToFarenheit extends StatefulWidget {
  const CelciusToFarenheit({super.key});

  @override
  State<CelciusToFarenheit> createState() => _CelciusToFarenheitState();
}

class _CelciusToFarenheitState extends State<CelciusToFarenheit>  {

  // Initialization of controller
  TextEditingController _cal = TextEditingController();

  double? celcius ;
  // double? result;
  String text = "..";


  void calculate(){
    double? result = (celcius! * 9/5) + 32;

    result =  double.parse((result).toStringAsFixed(2));
    setState(() {
      var r = "Result: $result℉ ";
      text = r.toString();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          primary: true,

          title: Text("Celcius - To - Farenheit"),
          backgroundColor:Color(0xFF212555),
          foregroundColor: Color(0xFFFFFFFF),
          leading: Transform.scale(
            scale: 0.8,
            child: Image.asset('images/Logo.png'),
          ),
          actions: [
            IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FarenheitToCelcius()));
            }, icon: Icon(Icons.compare_arrows)),

            IconButton(onPressed: (){
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xFFC3C3E5),
                  icon: Image.asset('images/Logo.png',
                    height: 60,
                  ),
                  title: Text('About TempX'),
                  content: Text("App Name: TempConvert\n\nDeveloper: Nitin Kumawat\n\nDeveloped Date: Aug 4, 2023\n\nDescription:\nEasily convert temperatures between Celsius and Fahrenheit with TempX. This sleek and user-friendly app simplifies temperature conversions for your convenience. Whether you're traveling or simply curious, TempX has you covered. Download now and experience temperature conversion made effortless.\n\nVersion: 1.0.0\n"),

                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DescApp())),
                      child: const Text('More Info'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
              tooltip: "About App",
                icon: Icon(
                    Icons.info,
                  size: 20,

                ),
            )
          ],

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 40),
              child: TextField(
                controller: _cal,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.edit_outlined),
                  suffixText: "℃",
                  labelText: 'CELCIUS ',
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
                    celcius = double.parse(_cal.text.toString());
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