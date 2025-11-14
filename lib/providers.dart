import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider((ref) => "Abu Solihin alhakim");

final greetingProvider = Provider((ref) => "Hello ${ref.watch(nameProvider)}");
