import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../commanWidgets/ccustomButton.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController phoneController = TextEditingController();

  Country SelctedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(children: [
            Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.indigo[100]),
              child: Image.asset(
                "assets/images/drone_1.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Enter your phone number",
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Text(
              "Add your phone number.  We'll send you verification code",
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.grey)),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Phone Number

            TextFormField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              style: TextStyle(fontSize: 18),
              onChanged: (value) {
                setState(() {
                  phoneController.text = value;
                });
              },
              decoration: InputDecoration(
                  hintText: "Enter phone number",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme:
                                CountryListThemeData(bottomSheetHeight: 450),
                            onSelect: (value) {
                              setState(() {
                                SelctedCountry = value;
                              });
                            });
                      },
                      child: Text(
                        "${SelctedCountry.flagEmoji} + ${SelctedCountry.phoneCode}",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  suffixIcon: phoneController.text.length > 9
                      ? Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      : null),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton(
                onPressed: () {},
                text: "Login",
              ),
            )
          ]),
        ),
      )),
    );
  }
}
