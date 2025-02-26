import 'dart:io';

void main() {
  showData();
}

void showData() async {
  startTask();
  String? account = await accessData();
  fetchData(account!);
}

void startTask() {
  String info1 = '요청수행 시작';
  stdout.write(info1);
}

Future<String?> accessData() async {
  String? account;

  Duration time = const Duration(seconds: 3);

  if (time.inSeconds > 2) {
    //sleep(time);
    await Future.delayed(time, () {
      account = '8,500만원';
      stdout.write(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다';
    stdout.write(info2);
  }

  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account 입니다';
  stdout.write(info3);
}
