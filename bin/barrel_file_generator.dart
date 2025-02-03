import 'dart:io';

import 'package:args/command_runner.dart';

void main(List<String> args) {
  final command = BarrelFileGeneratorCommand();
  final runner = CommandRunner(command.name, command.description)
    ..addCommand(command);

  runner.run(args).catchError((error) {
    if (error is! UsageException) throw error;
    exit(64);
  });
}

class BarrelFileGeneratorCommand extends Command {
  @override
  String get name => 'generate';

  @override
  final description = 'Generates barrel files for the specified directory.';

  BarrelFileGeneratorCommand() {
    argParser.addOption(name);
  }

  @override
  void run() {
    // TODO: implementes
  }
}
