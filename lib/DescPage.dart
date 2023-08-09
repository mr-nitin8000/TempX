import 'package:flutter/material.dart';

class DescApp extends StatefulWidget {
  const DescApp({super.key});

  @override
  State<DescApp> createState() => _DescAppState();
}

class _DescAppState extends State<DescApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          primary: true,
          title: Text("About TempX"),
          backgroundColor:Color(0xFF212555),
          foregroundColor: Color(0xFFFFFFFF),
          leading: Transform.scale(
            scale: 0.8,
            child: Image.asset('images/Logo.png',
            ),
          ),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Center(
                child: Image.asset('images/Logo.png',
                height: 60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("About TempX:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("TempX is a reliable and efficient temperature conversion app designed to help you quickly and accurately convert temperatures between Celsius and Fahrenheit. Whether you're a traveler, a student, or just curious about weather trends in different units, TempX is your go-to tool")
                  )
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Key Features:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:  Padding(
                padding: const EdgeInsets.only(
                    left: 8.0
                ),
                      child: Text("● Simple Conversion"),
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:  Padding(
                padding: const EdgeInsets.only(
                    left: 8.0
                ),
                      child: Text("● Real-Time Updates"),
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0
                      ),
                      child: Text("● Intuitive Interface"),
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:Padding(
                padding: const EdgeInsets.only(
                    left: 8.0
                ),
                      child: Text("● Offline Access"),
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:Padding(
                padding: const EdgeInsets.only(
                    left: 8.0
                ),
                      child: Text("● Offline Access"),
                  )
              ),


          //   why?

            Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 4,
                ),
                child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Why TempX?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0
                      ),
                      child: Text("TempX stands out for its simplicity, reliability, and offline functionality. Developed by Mr.Luckyyy, a trusted name in user-friendly applications, TempX ensures accurate conversions wherever you are.")
                  )
              ),
            ),

            Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 4,
                ),
                child:  Center(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Stay Connected:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 3.0
                      ),
                      child: Text("📧 Email: support@Mr.luckyy.com\n🌐 Website: www.Dummy.com\n📱 Social: @Mr.luckyyy____")
                  )
              ),
            ),


          //

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                          left: 55.0,
                          right: 14.0,
                      ),
                      child: Center(child: Text("Download TempX now and never struggle with temperature conversions again!!"))
                  )
              ),
          ],
        )
    );;
  }
}
