import 'dart:developer';

void main() async {
  DataService dataService = DataService();

  String data = await dataService.getData();
  log(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    log('getting data...');
    await Future.delayed(
      const Duration(seconds: 2),
    );

    log('got data!');
    return "Fake data";

    // getData();
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    log('parsing data...');
    await Future.delayed(
      const Duration(seconds: 1),
    );
    log('parsed data!');

    return "I am the desired form, parsed-data.";
  }

  Future<String> getData() async {
    // return data;
    final String dataFromCloud = await _getDataFromCloud();
    final String parsedData =
        await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    return parsedData;
  }
}
