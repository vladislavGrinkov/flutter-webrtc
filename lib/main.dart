import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:videochat/screens/home/home.dart';
import 'package:videochat/services/rtc_service.dart';
import 'constants/firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      lazy: false,
      create: (_) => RTCService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WebRTC Video Call',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}
