import 'package:flutter/material.dart';

// ignore: camel_case_types
// class OptionPageextends StatefulWidget {
//   const OptionPage({Key? key}) : super(key: key);

//   @override
//   State<OptionPage> createState() => _optionpageState();
// }

// class OptionPage {
// }

class OptionPage extends StatefulWidget {
  const OptionPage({super.key});

  @override
  State<OptionPage> createState() => _OptionPageState();
}

// class _OptionPageState extends State<OptionPage > {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// ignore: camel_case_types
class _OptionPageState extends State<OptionPage> {
  String _selected = 'first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      // ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Please select your profile",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  letterSpacing: 0.0703846,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 328.0,
                height: 89.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Radio<String>(
                    value: 'first',
                    groupValue: _selected,
                    onChanged: (value) {
                      setState(() {
                        _selected = value!;
                      });
                    },
                  ),
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/warehouse.png",
                        width: 50,
                        height: 80,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Shipper",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              letterSpacing: 0.0703846,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              letterSpacing: 0.0703846,
                            ),
                          ),
                          Text(
                            "Condectetur adipiscing",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              letterSpacing: 0.0703846,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 328.0,
                height: 89.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Radio<String>(
                    value: 'second',
                    groupValue: _selected,
                    onChanged: (value) {
                      setState(() {
                        _selected = value!;
                      });
                    },
                  ),
                  title: Row(
                    
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/truck.png",
                        width: 50,
                        height: 80,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Transporter",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              letterSpacing: 0.0703846,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              letterSpacing: 0.0703846,
                            ),
                          ),
                          Text(
                            "Condectetur adipiscing",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                              letterSpacing: 0.0703846,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 390,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor: const Color.fromARGB(255, 46, 59, 98),
                  ),
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
