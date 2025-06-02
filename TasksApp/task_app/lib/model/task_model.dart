class TaskModel {
  final String title;
  final DateTime dateTime;
  final bool isCompleated;

  TaskModel({
    required this.title,
    required this.dateTime,
    this.isCompleated = false,
  });
}

class TasksManager {
  List<TaskModel> tasksLists = [];

  void addTask(TaskModel taskModel) {
    tasksLists.add(taskModel);
  }

  void removeTask(String title) {
    tasksLists.removeWhere((task) =>
     task.title == title);
  }
}
