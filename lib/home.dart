// ignore_for_file: prefer_final_fields, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _textController = TextEditingController();
  List<Map<String, String>> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Chatbot"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]['message'] ?? ''),
                );
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: "Type your message...",
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              _sendMessage(_textController.text);
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage(String query) {
    // Implement your own rules for responding to user queries
    String botResponse = getBotResponse(query);
    
    // Update the chat UI with the user's query and bot's response
    _updateChat("User: $query");
    _updateChat("Bot: $botResponse");

    // Clear the text input
    _textController.clear();
  }

  void _updateChat(String message) {
    setState(() {
      _messages.add({'message': message});
    });
  }

  String getBotResponse(String userQuery) {
    // Implement your rules for generating bot responses
    // You can use if statements, switch statements, or any logic here
    if (userQuery.toLowerCase().contains("hello")) {
      return "Hi there! How can I help you?";
    } else if (userQuery.toLowerCase().contains("how are you")) {
      return "I'm just a bot, but thanks for asking!";
    } else {
      return "I'm not sure how to respond to that.";
    }
  }
}