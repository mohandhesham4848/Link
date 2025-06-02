import 'package:task_app/cubits/task_cuit/task_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/model/task_model.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(NoTasksState());

  List<TaskModel> tasksLists = [];
  void addTask(TaskModel taskModel) {
    tasksLists.add(taskModel);
    emit(AddTaskState());
  }

  void removeTask(String title) {
    tasksLists.removeWhere((task) => task.title == title);
    emit(RemoveTaskState());
  }

  void checkListOfTasks() {
    if (tasksLists.isEmpty) {
      emit(NoTasksState());
    } else {
      emit(TasksLoadedState());
    }
  }
}
