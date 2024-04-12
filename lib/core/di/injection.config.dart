// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:solid_software_test/clean_architecture/application/colors/get_random_color_value/get_random_color_value_bloc.dart'
    as _i6;
import 'package:solid_software_test/clean_architecture/domain/colors/colors_repository.dart'
    as _i4;
import 'package:solid_software_test/clean_architecture/infrastructure/colors/colors_data_source.dart'
    as _i3;
import 'package:solid_software_test/clean_architecture/infrastructure/colors/colors_repository_impl.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ColorsDataSource>(() => _i3.ColorsDataSourceImpl());
    gh.factory<_i4.ColorsRepository>(
        () => _i5.ColorsRepositoryImpl(gh<_i3.ColorsDataSource>()));
    gh.factory<_i6.GetRandomColorValueBloc>(
        () => _i6.GetRandomColorValueBloc(gh<_i4.ColorsRepository>()));
    return this;
  }
}
