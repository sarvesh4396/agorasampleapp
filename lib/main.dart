import 'package:agora_uikit/agora_uikit.dart';
import 'package:agorasampleapp/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AgoraClient client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(appId: appId, channelName: "test"),
      enabledPermission: [Permission.camera, Permission.microphone]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Agora App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Agora Sample App")),
        body: Stack(
          children: [
            AgoraVideoViewer(client: client),
            AgoraVideoButtons(client: client)
          ],
        ),
      ),
    );
  }
}
