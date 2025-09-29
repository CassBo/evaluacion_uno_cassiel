import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddTaskEvent>((event, emit) {
      final newTasks = List<String>.from(state.tasks)..add(event.taskName);
      emit(TaskState(tasks: newTasks));
    });

    on<DeleteTaskEvent>((event, emit) {
      final newTasks = List<String>.from(state.tasks)..removeAt(event.taskIndex);
      emit(TaskState(tasks: newTasks));
    });
  }
}
