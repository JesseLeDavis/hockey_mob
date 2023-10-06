part of '{{filename.snakeCase()}}_bloc.dart';

{{#hasLoadingAndReadyState}}

@freezed
class {{filename.pascalCase()}}State with _${{filename.pascalCase()}}State {
  const factory {{filename.pascalCase()}}State.loading() = _Loading;
  const factory {{filename.pascalCase()}}State.ready({}) = _Ready;
  const factory {{filename.pascalCase()}}State.error() = _Error;
}


{{/hasLoadingAndReadyState}}
{{^hasLoadingAndReadyState}}

@freezed
class {{filename.pascalCase()}}State with _${{filename.pascalCase()}}State {
  const factory {{filename.pascalCase()}}State({

  }) = _{{filename.pascalCase()}}State;
}
{{/hasLoadingAndReadyState}}