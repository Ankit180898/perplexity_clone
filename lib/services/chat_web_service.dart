import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:web_socket_client/web_socket_client.dart';

class ChatWebService {
  static final _instance = ChatWebService._internal();
  WebSocket? _socket;

  factory ChatWebService() => _instance;

  ChatWebService._internal();
  final _searchResultController = StreamController<Map<String, dynamic>>();
  final _contentController = StreamController<Map<String, dynamic>>();

  Stream<Map<String, dynamic>> get searchResultStream =>
      _searchResultController.stream;
  Stream<Map<String, dynamic>> get contentStream => _contentController.stream;

void connect() {
  try {
    _socket = WebSocket(Uri.parse("ws://localhost:8000/ws/chat"));
    _socket!.messages.listen(
      (message) {
        final data = json.decode(message);
        if (data['type'] == 'search_result') {
          _searchResultController.add(data);
        } else if (data['type'] == 'content') {
          _contentController.add(data);
        }
      },
      onError: (error) {
        debugPrint("WebSocket error: $error");
        // Handle reconnection logic or notify users
      },
      onDone: () {
        debugPrint("WebSocket connection closed.");
        // Reconnect or notify users
      },
    );
  } catch (e) {
    debugPrint("Failed to connect to WebSocket: $e");
  }
}


  void chat(String query) {
    debugPrint(query);
    debugPrint(_socket.toString());
    _socket?.send(json.encode({'query': query}));
  }
}