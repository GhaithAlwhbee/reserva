import 'package:get_it/get_it.dart';

import 'Presentation/Bloc/Auth Bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //!    features - posts

  //     Bloc

  sl.registerFactory(() => AuthBloc());

  //     Usecases

  //     Repository

  //     Datasources

  ///Core

  /// External
}
