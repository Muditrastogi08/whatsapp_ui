class StatusModel {
  final String name;
  final String avatar;
  final String currentTime;

  StatusModel({
    required this.name,
    required this.avatar,
    required this.currentTime,
  });
}

List<StatusModel> statusData = [
  StatusModel(
    name: 'Rahul',
    currentTime: '10:20',
    avatar: '',
  ),
  StatusModel(
    name: 'Mohan',
    currentTime: '11:35',
    avatar: '',
  ),
  StatusModel(
    name: 'Anu',
    currentTime: '13:30',
    avatar: '',
  ),
  StatusModel(
    name: 'Manoj',
    currentTime: '13:50',
    avatar: '',
  ),
];
