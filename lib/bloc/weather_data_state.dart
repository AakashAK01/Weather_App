part of 'weather_data_bloc.dart';

@immutable
abstract class WeatherDataState extends Equatable {
  const WeatherDataState();
  @override
  List<Object> get props => [];
}

class WeatherDataInitial extends WeatherDataState {}

class WeatherDataLoaded extends WeatherDataState {
  Dataaa currData;
  WeatherDataLoaded({required this.currData});
  @override
  List<Object> get props => [currData];
}

class WeatherDataError extends WeatherDataState {
  @override
  List<Object> get props => [];
}
