import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String avatar;
  final String currentTime;
  final Icon callType;

  CallModel(
      {required this.name,
      required this.avatar,
      required this.currentTime,
      required this.callType});
  static Icon callReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
}

List<CallModel> calldata = [
  CallModel(
    name: 'Rahul',
    currentTime: '10:20',
    avatar: '',
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: 'Mohan',
    currentTime: '11:35',
    avatar: '',
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: 'Anu',
    currentTime: '13:30',
    avatar: '',
    callType: CallModel.callReceived,
  ),
  CallModel(
    name: 'Manoj',
    currentTime: '13:50',
    avatar: '',
    callType: CallModel.callReceived,
  ),
];
