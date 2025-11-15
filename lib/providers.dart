import 'package:flutter_riverpod/legacy.dart';

final counterProvider = StateProvider.autoDispose((ref) => 0);


// ** AUTO DISPOSE **
// .autoDispose => Ketika kita keluar dari halaman yang menggunakan provider ini, maka provider 
//                 ini akan di dispose atau di bersihkan dari memory. Sehingga mulai dari 0 lagi

// ** MANUAL DISPOSE **
// ref.invalidate(counter) => ini adalah cara untuk membersihkan state dengan manual. contoh implementasi
//                            ada di second_page bagian (A1)