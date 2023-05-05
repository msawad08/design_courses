import 'dart:async';

import 'package:design_course/utils/network_status.dart';

abstract class BaseNetworkRepository {
  final controller = StreamController<NetworkStatus>();
  String errorMessage = "";


  Stream<NetworkStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield NetworkStatus.unknown;
    yield* controller.stream;
  }
}
