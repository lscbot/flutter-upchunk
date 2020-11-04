import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_upchunk/up_chunk.dart';

void main() {
  test('check endpoint options validation', () {
    final options = UpChunkOptions()
      ..endPoint = null
      ..endPointResolver = null;

    expect(() => UpChunk.createUpload(options), throwsException);
  });

  test('check file options validation', () {
    final options = UpChunkOptions()
      ..endPoint = ''
      ..endPointResolver = null;

    expect(() => UpChunk.createUpload(options), throwsException);
  });
}
