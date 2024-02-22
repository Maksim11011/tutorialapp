import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tutorialapp/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.poster).existsSync(), isTrue);
    expect(File(AppImages.profile).existsSync(), isTrue);
  });
}
