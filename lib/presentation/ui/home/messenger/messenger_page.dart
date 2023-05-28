import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uidUser = FirebaseAuth.instance.currentUser?.uid;
    return (uidUser != null)
        ? Container(
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance.collection('messages').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasData) {
                  // filter by uid
                  final data = snapshot.data?.docs;
                  final messages = data?.map((e) => e.data()).toList() ?? [];
                  print(messages.length);
                  if (data == null) {
                    return Text("got null data");
                  }
                  return ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        print(messages);
                        final usersConversation = messages[index].values;
                        return ListTile(title: Text("${messages[index]}"));
                      });
                }
                return const Center(child: Text("tot"));
              },
            ),
          )
        : const Center(child: Text("Error"));
  }
}
