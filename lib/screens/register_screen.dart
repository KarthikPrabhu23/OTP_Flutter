import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:otp1/provider/auth_provider.dart';
import 'package:otp1/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: phoneController.text.length,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.close),
                  ),
                ),
                const SizedBox(height: 112),
                const Text(
                  "Please enter your mobile number",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    letterSpacing: 0.0703846,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 18),
                const Text(
                  "You’ll receive a 4 digit code to verify next.",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    letterSpacing: 0.0703846,
                    color: Color.fromARGB(255, 106, 108, 123),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                TextFormField(
                  cursorColor: Colors.purple,
                  controller: phoneController,
                  style: const TextStyle(
                    // fontWeight: FontWeight.bold,
                    // fontFamily: 'Montserrat',
                    // fontStyle: FontStyle.normal,
                    // fontSize: 16.0,

                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                        // width: 327.0
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 550,
                              ),
                              onSelect: (value) {
                                setState(() {
                                  selectedCountry = value;
                                });
                              });
                        },
                        child: Text(
                          "${selectedCountry.flagEmoji}   + ${selectedCountry.phoneCode}  -",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length > 9
                        ? Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : null,
                  ),
                ),
                const SizedBox(height: 29),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                      text: "CONTINUE", onPressed: () => sendPhoneNumber()),
                ),

                // Animation
                // Container(
                // //   width: double.infinity,
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //         image: AssetImage('assets/splash1.png')),
                //         // fit: BoxFit.cover,

                //   ),
                //   child:
                //     Align(
                //       // vectorXZ5 (8:370)
                //       alignment:  Alignment.bottomCenter,
                //       child:
                //       SizedBox(
                //         width: 360,
                //         height:  200,
                //         child:
                //       // image: AssetImage('assets/splash1.png')
                //         // width:  360,
                //         // height:  200,
                //       ),
                //     ),

                // )
                // ),

                // ANIMATION ENDS
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}
