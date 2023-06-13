import 'package:doc_online/signin/core/di/injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
}
