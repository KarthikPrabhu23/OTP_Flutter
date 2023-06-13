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
  const OptionPage ({super.key});

  @override
  State<OptionPage > createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage > {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// ignore: camel_case_types
class OptionPageState extends State<OptionPage> {
  String _selected = 'first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                child: const Text(
                  "Please select your profile",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 380,
                height: 90,
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
                      Container(
                        child: Image.asset(
                          "img/house.png",
                          width: 50,
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: const Text(
                              "Shipper",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: const Text(
                              "Lorem ipsum dolor sit amet,",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Container(
                            child: const Text(
                              "Condectetur adipiscing",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 380,
                height: 90,
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
                    children: [
                      Container(
                        child: Image.asset(
                          "img/bus.png",
                          width: 50,
                          height: 80,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: const Text(
                              "Shipper",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet,",
                            style: TextStyle(fontSize: 14),
                          ),
                          Container(
                            child: const Text(
                              "Condectetur adipiscing",
                              style: TextStyle(fontSize: 14),
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
              Container(
                width: 390,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("CONTINUE"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF035AA6),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
