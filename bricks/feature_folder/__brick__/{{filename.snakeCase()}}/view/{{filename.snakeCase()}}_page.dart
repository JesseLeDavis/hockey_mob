import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

{{#isStateless}}

class {{filename.pascalCase()}}Page extends StatelessWidget {
  const {{filename.pascalCase()}}Page({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return {{filename.pascalCase()}}View(
     
    );
  }
}


{{/isStateless}}
{{^isStateless}}

class {{filename.pascalCase()}}Page extends StatefulWidget {
  const {{filename.pascalCase()}}Page({
    Key? key,
  }) : super(key: key);

  @override
  State<{{filename.pascalCase()}}Page> createState() =>
      _{{filename.pascalCase()}}State();
}

class _{{filename.pascalCase()}}State
    extends State<{{filename.pascalCase()}}Page> {
  late final {{filename.pascalCase()}}Bloc _{{filename.camelCase()}}Bloc;
  @override
  void initState() {
    super.initState();
    _{{filename.camelCase()}}Bloc = getIt<{{filename.pascalCase()}}Bloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _{{filename.camelCase()}}Bloc,
      child: const {{filename.pascalCase()}}View(),
    );
  }
}

{{/isStateless}}