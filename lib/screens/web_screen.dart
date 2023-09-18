import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                // web profile bar
                // web search bar
                ContactList(),
              ],
            ),
          ),
          // Web screen
          Container(
            width: MediaQuery.of(context).size.width * .75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
