// import 'package:flutter/material.dart';
// //login sign

// class BtnLogin extends StatelessWidget {
//   final String label;
//   final VoidCallback onPressed;

//   const BtnLogin({
//     Key? key,
//     required this.label,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: const Color.fromARGB(255, 253, 224, 99),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//           padding: const EdgeInsets.symmetric(vertical: 15),
//         ),
//         child: Text(
//           label,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
