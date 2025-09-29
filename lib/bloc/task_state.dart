part of 'task_bloc.dart';

@immutable
class TaskState {
  final List<String> tasks;

  const TaskState({this.tasks = const []});
}
