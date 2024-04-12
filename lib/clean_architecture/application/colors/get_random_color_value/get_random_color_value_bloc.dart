import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:solid_software_test/clean_architecture/domain/colors/colors_repository.dart';
import 'package:solid_software_test/core/failure.dart';

part 'get_random_color_value_bloc.freezed.dart';
part 'get_random_color_value_event.dart';
part 'get_random_color_value_state.dart';

/// The [Bloc] for Getting the random color.
///
/// Gets [GetRandomColorValueEvent] events
/// and emits [GetRandomColorValueState] states.
///
/// Events:
///   [GetRandomColorValueEvent.get] - get a random color value event.
///
/// States:
///   [GetRandomColorValueState.initial] - initial state.
///   [GetRandomColorValueState.loading] - state of loading the random
///   color value.
///   [GetRandomColorValueState.loaded] - the random color value loaded.
///   [GetRandomColorValueState.initial] - the random color value
///   loading failed.
@injectable
class GetRandomColorValueBloc
    extends Bloc<GetRandomColorValueEvent, GetRandomColorValueState> {
  final ColorsRepository _colorsRepository;

  /// Create instance of [GetRandomColorValueBloc].
  GetRandomColorValueBloc(
    this._colorsRepository,
  ) : super(const GetRandomColorValueState.initial()) {
    on<GetRandomColorValueEvent>((event, emit) {
      event.when(
        get: () {
          emit(const GetRandomColorValueState.loading());
          _colorsRepository.getRandomColorValue().fold(
            (l) {
              emit(GetRandomColorValueState.failure(l));
            },
            (r) {
              emit(GetRandomColorValueState.loaded(r.colorValue));
            },
          );
        },
      );
    });
  }
}
