import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gig_today_1/presenter/themes/themes/themes.dark.dart';

import '../../../presenter/themes/theme.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(DarkAppTheme()) AppTheme theme,
  }) = _SettingsState;
}