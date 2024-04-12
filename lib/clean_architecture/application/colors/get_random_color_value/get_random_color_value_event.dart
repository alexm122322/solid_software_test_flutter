part of 'get_random_color_value_bloc.dart';

/// Events for Get Random Color Bloc.
@freezed
sealed class GetRandomColorValueEvent with _$GetRandomColorValueEvent {
  const factory GetRandomColorValueEvent.get() = GetGetRandomColorValueEvent;
}
