part of 'task_bloc.dart';

@immutable
abstract class TaskEvent {}

class AddTaskEvent extends TaskEvent {
  final String taskName;

  AddTaskEvent(this.taskName);
}

class DeleteTaskEvent extends TaskEvent {
  final int taskIndex;

  DeleteTaskEvent(this.taskIndex);
}
