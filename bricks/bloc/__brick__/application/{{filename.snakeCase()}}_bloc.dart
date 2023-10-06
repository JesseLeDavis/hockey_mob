import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';



part '{{filename.snakeCase()}}_event.dart';
part '{{filename.snakeCase()}}_state.dart';
part '{{filename.snakeCase()}}_bloc.freezed.dart';

{{#isSingleton}}@singleton{{/isSingleton}}{{^isSingleton}}@injectable{{/isSingleton}}
class {{filename.pascalCase()}}Bloc extends Bloc<{{filename.pascalCase()}}Event, {{filename.pascalCase()}}State> {
  {{filename.pascalCase()}}Bloc(

  ) : super({{#hasLoadingAndReadyState}}const {{filename.pascalCase()}}State.loading());{{/hasLoadingAndReadyState}}{{^hasLoadingAndReadyState}}const {{filename.pascalCase()}}State()); 

  {{/hasLoadingAndReadyState}}
}
