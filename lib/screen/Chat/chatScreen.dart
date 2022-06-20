import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F4),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  TextEditingController textController = TextEditingController();
  return Container(
    child: Column(children: [
      Expanded(
        child: Container(
          child: const Center(
              child: Text(
            "Chat",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF000000),
            ),
          )),
        ),
        flex: 1,
      ),
      Expanded(
        child: Container(
          // width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    color: Color(0xFF1F4068),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Your text",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA0A2A3)),
                  ),
                ),
                const Icon(
                  Icons.mic,
                  color: Color(0xFF1F4068),
                ),
              ],
            ),
          ),
        ),
        flex: 6,
      ),
    ]),
  );
}
