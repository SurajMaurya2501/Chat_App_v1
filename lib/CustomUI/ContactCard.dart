import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactCard extends StatelessWidget {
  ContactCard({super.key, required this.contact});
  final ChatModel contact;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 53,
        width: 50,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blueGrey[200],
              child: SvgPicture.asset(
                'assets/icons/person.svg',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
            contact.select
                ? const Positioned(
                    bottom: 4,
                    right: 5,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      title: Text(
        contact.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        contact.status!,
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}
