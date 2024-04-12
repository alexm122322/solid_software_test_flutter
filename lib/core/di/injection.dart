import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:solid_software_test/core/di/injection.config.dart';

/// The public [GetIt] instance.
/// Used for retrieving or creating an instance of a registered type.
final getIt = GetIt.instance;

/// Configures [GetIt] injection.
/// Should be called before using[getIt].
@InjectableInit()
void configureInjection() => getIt.init();
