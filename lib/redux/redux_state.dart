



import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class ReduxState{

  final ThemeData themeData;

  final Locale locale;

  ReduxState({this.themeData, this.locale});
}

ReduxState appReducer(ReduxState state, action) {
  return ReduxState(
      themeData: ThemeDataReducer(state.themeData, action),
      locale: LocalReducer(state.locale, action));
}


final ThemeDataReducer = combineReducers<ThemeData>(
  [TypedReducer<ThemeData, ThemeRefreshAction>(_refreshThemeData)]
);

ThemeData _refreshThemeData(ThemeData themeData, action) {
  return action.themeData;
}

class ThemeRefreshAction{

  final ThemeData themeData;

  ThemeRefreshAction(this.themeData);
}


final LocalReducer = combineReducers<Locale>(
  [TypedReducer<Locale, LocalRefreshAction>(_refreshLocal)]
);

Locale _refreshLocal(Locale locale, action){
  return action.local;
}

class LocalRefreshAction{
  final Locale locale;

  LocalRefreshAction(this.locale);

}