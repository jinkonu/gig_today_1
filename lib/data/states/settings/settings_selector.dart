import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gig_today_1/presenter/themes/theme.dart';

import 'settings_bloc.dart';
import 'settings_state.dart';

class SettingsSelector<T> extends BlocSelector<SettingsBloc, SettingsState, T> {
  SettingsSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
          builder: (_, value) => builder(value),
        );
}

class SettingsThemeSelector extends SettingsSelector<AppTheme> {
  SettingsThemeSelector({
    super.key,
    required super.builder,
  }) : super(
          selector: (state) => state.theme,
        );
}
