// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library test.runner.environment;

import '../util/cancelable_future.dart';

/// The abstract class of environments in which test suites are
/// loaded—specifically, browsers and the Dart VM.
abstract class Environment {
  /// Displays information indicating that the test runner is paused.
  ///
  /// The returned future will complete when the user takes action within the
  /// environment that should unpause the runner. If the runner is unpaused
  /// elsewhere, the future should be canceled.
  CancelableFuture displayPause();
}
