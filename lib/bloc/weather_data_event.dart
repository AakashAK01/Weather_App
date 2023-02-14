part of 'weather_data_bloc.dart';

@immutable
abstract class WeatherDataEvent extends Equatable {}

class GetWeatherData extends WeatherDataEvent {
  String city;
  GetWeatherData({required this.city});
  @override
  List<Object?> get props => [city];
}

class SummaEvent extends WeatherDataEvent {
  String message;
  SummaEvent({required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
