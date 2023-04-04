import 'package:ajiledakarv/bottom_navigation_bar.dart';
import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/models/chat_model.dart';
import 'package:ajiledakarv/screen/explorer/explore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'yes sure !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'alhamdou!',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'yes nice !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'et toi !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'cv boe oklm !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'nka taye !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'magui si diam !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: 'Comment tu va boe !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: false),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: true),
    Message(
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        text: ' bonjour !',
        isSentByME: false),
  ].reversed.toList();

  var textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bnv()));
        }, icon: Icon(Icons.arrow_back_ios , color: Colors.black,)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Retour' , style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: GroupedListView<Message, DateTime>(
              reverse: true,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              order: GroupedListOrder.DESC,
              padding: EdgeInsets.all(8),
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                
                child: Center(
                  child: Card(
                    color: primary,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(DateFormat.yMMMd().format(message.date)),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => 
                
                 Container(
                  child: Row(
                    mainAxisAlignment:  message.isSentByME  ? MainAxisAlignment.end :MainAxisAlignment.start,
                    children: [
                     message.isSentByME ? 
                     Row(
                      children: [
                         Card(
                          color: primary,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(message.text ,  style: GoogleFonts.inter(
                        color: Colors.white
                      ),),
                    ),
                  ),
                         CircleAvatar(
                        backgroundImage:  AssetImage('assets/images/doctor.png')  ),
                      
                      
                      ],
                     ) :
                      Row(
                      children: [
                        
                    
                   CircleAvatar(
backgroundColor: Colors.transparent,

                        backgroundImage: AssetImage('assets/images/messager.png' ) ,
                      ),
                         Card(
                          color: Secondary,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(message.text),
                    ),
                  ),
                      ],
                     )
                    ],
                  )
                ),
              
            )),
            Container(
              padding: EdgeInsets.all(6),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ecrire vore message',
                        border: InputBorder.none,
                      ),
                    onSubmitted: (text) {
                      final message = Message(date: DateTime.now(), text: text, isSentByME: true);
                      setState(() {
                        messages.add(message);
                        
                      });
                      
                    },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
