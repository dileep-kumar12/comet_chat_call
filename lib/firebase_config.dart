
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if(Platform.isIOS){
      return const FirebaseOptions(
          apiKey: "AIzaSyBonMaCV87hWNcZgPGWjp2drI2BRR0FIag",
          appId: "1:968294697093:ios:d1f5ca9336bebc974081ec",
          messagingSenderId: "968294697093",
          projectId: "comet-chat-82a1f",
          storageBucket: "comet-chat-82a1f.appspot.com"
      );
    } else {
      return const FirebaseOptions(
          apiKey: "AIzaSyBtdBwFmFKnGWXFiFdHkfzOcPO0K70Y7LM",
          appId: "1:968294697093:android:bec5e0c36366b5144081ec",
          messagingSenderId: "968294697093",
          projectId: "comet-chat-82a1f",
          storageBucket: "comet-chat-82a1f.appspot.com"
      );
    }
  }
}
