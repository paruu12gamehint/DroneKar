// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class signIn extends StatelessWidget {
//   static String routeName = "/signIn";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar(),
//       body: SafeArea(
//           child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: Column(
//             children: [
//               Text(
//                 "Welcome Back",
//                 style: GoogleFonts.mukta(
//                   textStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 25),
//                 ),
//               ),
//               Text(
//                 "Sign in with your email and password \nor continue with social media",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.poppins(
//                   textStyle: TextStyle(fontSize: 15),
//                 ),
//               ),
//               SignForm(),
//             ],
//           ),
//         ),
//       )),
//     );
//   }

//   AppBar appBar() {
//     return AppBar(
//       title: Text(
//         "Sign In",
//         style: TextStyle(fontWeight: FontWeight.w500, color: Color(0XFF8b8b8b)),
//       ),
//       centerTitle: true,
//     );
//   }
// }

// class SignForm extends StatefulWidget {
//   const SignForm({super.key});

//   @override
//   State<SignForm> createState() => _SignFormState();
// }

// class _SignFormState extends State<SignForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         child: Column(
//       children: [
//         TextFormField(
//           decoration: InputDecoration(
//             hintText: "Enter your email",
//             labelText: "Email",
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             suffixIcon: CustomIcon(),
//           ),
//         )
//       ],
//     ));
//   }
// }

// class CustomIcon extends StatelessWidget {
//   const CustomIcon({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
//       child: Icon(
//         CupertinoIcons.mail_solid,
//         size: 20,
//       ),
//     );
//   }
// }
