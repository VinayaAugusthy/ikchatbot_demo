import 'package:flutter/material.dart';
import 'package:ikchatbot/ikchatbot.dart';

final chatBotConfig = IkChatBotConfig(
  //SMTP Rating to your mail Settings
  ratingIconYes: const Icon(Icons.star),
  ratingIconNo: const Icon(Icons.star_border),
  ratingIconColor: Colors.black,
  ratingBackgroundColor: Colors.white,
  ratingButtonText: 'Submit Rating',
  thankyouText: 'Thanks for your rating!',
  ratingText: 'Rate your experience:',
  ratingTitle: 'Thank you for using the chatbot!',
  body: 'This is a test email sent from Flutter and Dart.',
  subject: 'Test Rating',
  recipient: 'recipient@example.com',
  isSecure: false,
  senderName: 'Your Name',
  smtpUsername: 'Your Email',
  smtpPassword: 'your password',
  smtpServer: 'stmp.gmail.com',
  smtpPort: 587,
  //Settings to your system Configurations
  sendIcon: const Icon(Icons.send, color: Colors.black),
  userIcon: const Icon(Icons.person, color: Colors.white),
  botIcon: const Icon(Icons.android, color: Colors.white),
  botChatColor: const Color.fromARGB(255, 81, 80, 80),
  delayBot: 100,
  closingTime: 1,
  delayResponse: 1,
  userChatColor: Colors.blue,
  waitingTime: 1,
  keywords: keywords,
  responses: responses,
  backgroundColor: Colors.white,
  initialGreeting: "👋 Hello! \nWelcome to Sitare\nHow can I assist you today?",
  defaultResponse: "Sorry, I didn't understand your response.",
  inactivityMessage: "Is there anything else you need help with?",
  closingMessage: "This conversation will now close.",
  inputHint: 'Send a message',
  waitingText: 'Please wait...', backgroundImage: '', useAsset: false,
  backgroundAssetimage: '',
);

final List<String> keywords = [
  'who are you',
  'why not getting call astrologer',
  'fuck',
  'sorry'
];

final List<String> responses = [
  'I am a bot created by Iksoft Original, a proud Ghanaian',
  '1.Check your network connection.\n 2. Astrologer may be busy due to heavy responses...pls wait',
  'You are such an idiot to tell me this. you dont have future. Look for Iksoft Original and seek for knowledge. here is his number +233550138086. call him you lazy deep shit',
  'Good! i have forgiven you. dont do that again!'
];
