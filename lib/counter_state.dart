// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'counter_state.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'counter_state.g.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int count,
    required bool isEnabled,
  }) = _CounterState;

  factory CounterState.fromJson(Map<String, Object?> json)
      => _$CounterStateFromJson(json);
}