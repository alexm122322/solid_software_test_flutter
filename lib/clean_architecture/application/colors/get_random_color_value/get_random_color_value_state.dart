part of 'get_random_color_value_bloc.dart';

/// States for Get Random Color Bloc.
@freezed
abstract class GetRandomColorValueState with _$GetRandomColorValueState {
  /// Initialize state.
  const factory GetRandomColorValueState.initial() =
      InitializeGetRandomColorValueState;

  /// Loading state.
  const factory GetRandomColorValueState.loading() =
      LoadingGetRandomColorValueState;

  /// Failure state.
  const factory GetRandomColorValueState.failure(Failure failure) =
      FailureGetRandomColorValueState;

  /// Loaded state.
  const factory GetRandomColorValueState.loaded(int colorCode) =
      LoadedGetRandomColorValueState;
}
