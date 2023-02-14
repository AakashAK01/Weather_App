import 'package:auto_routers/freezz/dataaa/current.dart';
import 'package:auto_routers/freezz/dataaa/dataaa.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../api_dio.dart';

part 'weather_data_event.dart';
part 'weather_data_state.dart';

class WeatherDataBloc extends Bloc<WeatherDataEvent, WeatherDataState> {
  WeatherDataBloc() : super(WeatherDataInitial()) {
    on<GetWeatherData>((event, emit) async {
      emit(WeatherDataError());
      try {
        var data = await WeatherApi().getAllCurrentWeatherDetails(event.city);
        emit(WeatherDataLoaded(currData: data));
      } catch (e) {
        print(e);
        emit(WeatherDataError());
      }
    });

    on<SummaEvent>((event, emit) async {
      print("Summa event da");
    });
  }
}
