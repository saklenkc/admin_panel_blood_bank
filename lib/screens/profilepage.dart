// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:softgrid/components/components.dart';
// import 'package:softgrid/screens/updatefee.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Profilepage extends StatelessWidget {
//   static String id = 'Profilepage';
//   final String email;
//
//   Future<void> _sendMessage(String phoneNumber) async {
//   //   try {
//   //     await launchUrl(
//   //         Uri.parse("whatsapp://send?phone=91$phoneNumber&text=hii"));
//   //   } catch (e) {
//   //     print('Error launching WhatsApp: $e');
//   //   }
//   // }
//
//   const Profilepage(this.email, {super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: custombar(context),
//       body:   StreamBuilder(
//     stream: FirebaseFirestore.instance
//         .collection('users')
//         .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
//         .snapshots(),
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.active) {
//     if (snapshot.hasData) {
//     return ListView.builder(
//     itemCount: snapshot.data!.docs.length,
//     itemBuilder: (context, index) {
//       var document = snapshot.data!.docs[index];
//       return ListView(
//         children: [
//           SizedBox(
//             height: MediaQuery
//                 .of(context)
//                 .size
//                 .height,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: NetworkImage(imageUrl),
//                       radius: 40,
//                     ), // Use placeholder image if URL is null
//
//                     const SizedBox(width: 10),
//                     Text(
//                       userData['name'] ?? 'No Name',
//                       style: const TextStyle(fontSize: 24),
//                     ),
//                     const SizedBox(width: 10),
//                     IconButton(
//                       icon: const Icon(
//                         Icons.send,
//                         size: 50.0,
//                         color: Colors.green,
//                       ),
//                       onPressed: () async {
//                         String phoneNumber = userData['phone'];
//                         await _sendMessage(phoneNumber);
//                       },
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       top: 20.0,
//                       left: 20.0,
//                       right: 20.0,
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.green[50],
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           ListTile(
//                             leading: const Icon(Icons.email),
//                             title: Text('Email : ${userData['email']}'),
//                           ),
//                           const Divider(),
//                           ListTile(
//                             leading: const Icon(Icons.phone),
//                             title: Text(
//                                 'Phone : ${userData['phone']}'),
//                           ),
//                           const Divider(),
//                           ListTile(
//                               leading: const Icon(Icons.note),
//                               title: Text(
//                                   'License Id : ${userData['parentPhone']}')),
//                           const Divider(),
//                           ListTile(
//                             leading: const Icon(Icons.home),
//                             title:
//                             Text('Address : ${userData['address']}'),
//                           ),
//                           const Divider(),
//                           ListTile(
//                             leading: const Icon(Icons.book_outlined),
//                             title: Text(' : ${userData['']}'),
//                           ),
//                           const Divider(),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       );
//     }     );}else {
//       return Center(child: Text('No data found'));
//     }
//     } else {
//       return Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//     },
//       ),
//     );
//   }
// }
