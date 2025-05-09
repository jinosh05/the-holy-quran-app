part of 'bloc.dart';

@immutable
class ChapterState extends Equatable {
  final List<Chapter>? data;
  final String? message;

  const ChapterState({
    this.data,
    this.message,
  });

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@immutable
class ChapterDefault extends ChapterState {
  const ChapterDefault() : super();
}

@immutable
class ChapterFetchLoading extends ChapterState {
  const ChapterFetchLoading() : super();
}

@immutable
class ChapterFetchSuccess extends ChapterState {
  const ChapterFetchSuccess({super.data});
}

@immutable
class ChapterFetchFailed extends ChapterState {
  const ChapterFetchFailed({super.message});
}
