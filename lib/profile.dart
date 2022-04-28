import 'package:flutter/material.dart';

class ProfileScrren extends StatelessWidget {
  const ProfileScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Container(
                 color: Colors.green,
                 height: 250.0,
                 width: MediaQuery.of(context).size.width,
                 child: Column(
                   children: [
                     Row(
                       children: const[
                         Icon(Icons.edit),
                       ],
                     ),
                     Padding(
                       padding:  EdgeInsets.only(top: 40.0),
                       child: Column(
                         children: const [
                           CircleAvatar(
                             backgroundImage: AssetImage("assets/images/profile1.jpg"),
                             radius: 75.0,
                           ),
                           Text("Designer Name"),
                           SizedBox(height: 5.0,),
                           Text("love with UI/GUI/UX"),
                         ],
                       ),
                     ),
                   ],
                 ),
                   
                 
               ),
               ListBody(
                 children: [
                   ListTile(
                     leading: Icon(Icons.message),
                     title: Text("Mail Inbox"),
                     trailing: Container(
                       child: Center(child: Text("5")),
                       color: Colors.white,
                       width: 25.0,
                       height: 20.0,
                     ),
                   ),
                   Divider(),
                   ListTile(
                     leading: Icon(Icons.people),
                     title: Text("Friends"),
                     trailing: Container(
                       child: Center(child: Text("25")),
                       color: Colors.white,
                       width: 25.0,
                       height: 20.0,
                     ),
                   ),
                   Divider(),
                   ListTile(
                     leading: Icon(Icons.send),
                     title: Text("Invites"),
                     trailing: Container(
                       child: Center(child: Text("1")),
                       color: Colors.white,
                       width: 25.0,
                       height: 20.0,
                     ),
                   ),
                   Divider(),
                   ListTile(
                     leading: Icon(Icons.done_rounded),
                     title: Text("bookmark"),
                    
                   ),
                   Divider(),
                   ListTile(
                     leading: Icon(Icons.done_rounded),
                     title: Text("Account settings"),
                     
                   ),
                  
                 ],
               ),
              //  Icon(Icons.up)
          ],
        ),
          
      ),
    );
  }
}