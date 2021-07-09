// // import 'package:firebase_database/firebase_database.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// // final referenceDataBase = FirebaseDatabase.instance;
// // final ref = referenceDataBase.reference();
// // Stream collectionStream =
// //     FirebaseFirestore.instance.collection('users').snapshots();
// // Stream documentStream =
// //     FirebaseFirestore.instance.collection('users').doc('ABC123').snapshots();
// // Map<String, dynamic> data = document.data() as Map<String, dynamic>;
// class databaseget extends StatefulWidget {
//   // const databaseget({ Key? key }) : super(key: key);
//   final Stream<QuerySnapshot> _usersStream =
//       FirebaseFirestore.instance.collection('users').snapshots();

//   @override
//   _databasegetState createState() => _databasegetState();
// }

// class _databasegetState extends State<databaseget> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//         stream: FirebaseFirestore.instance
//             .collection('dates')
//             .doc('July7')
//             .snapshots(),
//         builder: (context, snapshot) {
//           return Text(
//             "hi",
//           );
//         });
//   }
// }
