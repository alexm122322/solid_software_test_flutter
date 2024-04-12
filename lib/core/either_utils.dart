import 'package:dartz/dartz.dart';

/// The Utils class of [Either].
class EitherUtils {
  /// Function for running the [run] and converting results into [Either]
  /// in a pretty and safe way.
  ///
  /// Calls the [run] and return [Right].
  /// If the exception occurs, calls [error] and return [Left].
  static Either<L, R> tryCatch<L, R>(
    R Function() run,
    L Function(dynamic e, StackTrace s) error,
  ) {
    try {
      return Right(run());
    } catch (e, s) {
      return Left(error(e, s));
    }
  }
}
