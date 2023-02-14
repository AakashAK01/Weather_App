// import 'package:flutter/material.dart';

// class CardPage extends StatefulWidget {
//   CardPage({Key? key}) : super(key: key);

//   @override
//   State<CardPage> createState() => _CardPageState();
// }

// class _CardPageState extends State<CardPage> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height / 3,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border:
//                   Border.all(color: Color.fromARGB(255, 95, 92, 92), width: 2),
//             ),
//             child: Form(
//               key: _formKey,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Enter Your Debit Card Details",
//                       style: TextStyle(
//                           color: Color(0xff132E79),
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     _inputTile(
//                         label: "LAST 6 DIGIT OF DEBIT CARD",
//                         onChanged: (v) {
//                           // TextInputChanged(
//                           //     formValid:
//                           //         _formKey.currentState?.validate() ?? false);
//                         },
//                         validator: (v) {
//                           if (v != null && v.isEmpty) {
//                             return "";
//                           }
//                         },
//                         icon: Icons.credit_card),
//                     _inputTile(
//                         label: "EXP DATE",
//                         onChanged: (v) {
//                           // TextInputChanged(
//                           //     formValid:
//                           //         _formKey.currentState?.validate() ?? false);
//                         },
//                         validator: (v) {
//                           if (v != null && v.isEmpty) {
//                             return "";
//                           }
//                         }),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   ListTile _inputTile({
//     required String label,
//     IconData? icon,
//     required Function(String?) onChanged,
//     FormFieldValidator<String?>? validator,
//   }) {
//     return ListTile(
//       subtitle: TextFormField(
//         keyboardType: TextInputType.number,
//         onChanged: onChanged,
//         validator: validator ?? (v) {},
//         style: TextStyle(
//           fontSize: 18,
//           color: Color(0xff132E79),
//           fontWeight: FontWeight.bold,
//         ),
//         decoration: InputDecoration(
//           suffixIcon: Icon(
//             icon,
//             color: Color(0xff132E79),
//           ),
//           label: Text(
//             label,
//             style: TextStyle(
//               color: Color(0xff132E79),
//               fontSize: 18,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
