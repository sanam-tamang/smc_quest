
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(_Initial()) {
    on<PostEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
