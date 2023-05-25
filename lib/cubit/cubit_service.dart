import 'package:cryptotracker/models/crypto.dart';
import 'package:cryptotracker/services/dataservice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCubit extends Cubit<List<Crypto>> {
  final _dataService = DataService();

  CryptoCubit() : super([]);

  void getCrypto() async => emit(await _dataService.fetchPost());
}
