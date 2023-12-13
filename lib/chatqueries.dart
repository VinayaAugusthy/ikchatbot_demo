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
  closingTime: 0,
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
  //use only small letters for the questions
  'hi',
  'hello',
  'i got a call but couldn\'t receive it',
  'why i am not getting call from astrologer',
  'what is the minimum amount required to call an astrologer',
  'can i call the astrologer for free',
  'why wallet is not updating after recharge'
];

final List<String> responses = [
  'Hello, how can I help you?',
  'Hi, how can I help you?',
  'Don\'t worry you can resume your call anytime. We will give you first priority',
  '1.Check your network connection.\n 2. Astrologer may be busy due to heavy responses...pls wait',
  'The minimum amount varies according to the rate per minute charged by each astrologer. You should have a minute of balance that lets you talk for 5 minutes.',
  'No, to call an astrologer, you have to recharge your wallet. You can chat with the astrologer for free.',
  'It may due to technical reasons. If issue persist please contact our customer care.'
];
