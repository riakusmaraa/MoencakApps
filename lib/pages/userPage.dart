import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Container(
      margin:EdgeInsets.only(right: 32, left: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In as',
            style: TextStyle(fontSize: 14),
          ),
          Text(
            user.email!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
          SizedBox(height: 16,),
          ElevatedButton(
            onPressed:() => FirebaseAuth.instance.signOut(), 
            child: Text('Log Out'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF20774D),
                minimumSize: const Size.fromHeight(50)),
          )        ],
      ),
    );
  }
}
