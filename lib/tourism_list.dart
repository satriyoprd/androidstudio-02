import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/main_screen.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/list_item.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();

}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Taman Alun-Alun',
      location: 'Jl. RA Kartini',
      imageAsset: 'assets/images/tulungagung.jpg',
      description: 'Kesan asri, hijau, rindang, dan menyejukkan akan terucap dalam hati setiap orang yang singgah di sini. Taman alun - alun ini merupakan standart taman bermain anak - anak dan juga taman olahraga. Aktivitas-aktivitas di Taman Aloon-aloon ini cukup beragam, sekedar santai, atau sedang melakukan aktivitas lain seperti olah raga, bermain, belajar atau pun berlatih sesuatu.',
      day: 'Everyday',
      time: '24 hours',
      ticket: 'Free',
    ),

    TourismPlace(
      name: 'Pantai Gemah',
      location: 'Jalur Lintas Selatan',
      imageAsset: 'assets/images/tulungagung2.jpg',
      description: 'Pantai Gemah memiliki pasir berwarna coklat sepanjang 2 kilometer. Perpaduan pasir dan air laut yang berwarna biru makin menambah pesona pantai. Kawasan pantai juga dikelilingi pohon pinus, batu-batu besar, dan tebing berbatu karang. Pantai Gemah merupakan obyek wisata yang cocok untuk liburan bersama keluarga termasuk libur lebaran 2022. Pantai ini memiliki ombak yang tidak terlalu tinggi.',
      day: 'Everyday',
      time: '8am - 6pm',
      ticket: 'Rp.5000,-',
    ),

    TourismPlace(
      name: 'Ranu Gumbolo',
      location: 'Bantengan, Pagerwojo',
      imageAsset: 'assets/images/tulungagung7.jpg',
      description: 'Ranu Gumbolo adalah salah satu tujuan wisata unggulan di Tulungagung yang menyajikan wisata alam yang berupa danau dengan panorama menawan. Danau mempunyai daya tarik yang berupa perairan berwarna hijau dengan hamparan hutan pinus.',
      day: 'Everyday',
      time: '6am - 5pm',
      ticket: 'Rp.6000,-',
    ),

    TourismPlace(
      name: 'Pantai Kedung Tumpang',
      location: 'Pucanglaban, Tulungagung',
      imageAsset: 'assets/images/tulungagung3.jpg',
      description: 'Pantai Kedung Tumpang adalah salah satu destinasi wisata yang bertempatkan di Kabupaten Tulungagung Jawa Timur. Pantai yang satu ini memiliki kondisi yang cukup unik, karena terdapat lekukan ataupun ceruk yang menyerupai kolam pada bagian tengah karang. Pesona keindahan alam yang dimiliki oleh pantai Kedung Tumpang akan menyambut setiap wisatawan yang datang. Bahkan para wisatawan tidak hanya bisa menikmati pemandangan saja, namun bisa melakukan berbagai macam hal yang menyenangkan ketika datang ke wisata tersebut.',
      day: 'Everyday',
      time: '24 hours',
      ticket: 'Free',
    ),

    TourismPlace(
      name: 'Air Terjun Alam Kandung',
      location: 'Rejotangan, Tulungagung',
      imageAsset: 'assets/images/tulungagung4.jpg',
      description: 'Wana wisata Grojokan Sewu Alam Kandung berlokasi di Desa Tanen, Kecamatan Rejotangan Kabupaten Tulungagung, Jawa Timur. Obyek wisata alam Air Terjun Alam Kandung ini terbilang cukup sejuk, karena tempat ini termasuk dalam kawasan hutan lindung miliki perhutani setempat dan dikelilingi pepohonan jati yang rindang.',
      day: 'Everyday',
      time: '8am - 4pm',
      ticket: 'Rp.5000,-',
    ),

    TourismPlace(
      name: 'Pantai Lumbung',
      location: 'Pucanglaban, Tulungagung',
      imageAsset: 'assets/images/tulungagung5.jpg',
      description: 'Pantai Lumbung menjadi salah satu destinasi wisata alam terbaru di Kab. Tulungagung Jawa Timur yang menyuguhkan keindahan dan suasana damai. Refresh jiwa dan pikiran penat dengan explore destinasi wisata alam murah di Tulungagung satu ini bersama teman maupun keluarga. Menghabiskan hari libur dengan berwisata menjadi aktivitas terbaik guna memanjakan keluarga ketika akhir pekan.',
      day: 'Everyday',
      time: '24 hours',
      ticket: 'Free',
    ),

    TourismPlace(
      name: 'Pantai Sanggar',
      location: 'Jengglungharjo, Tanggunggunung',
      imageAsset: 'assets/images/tulungagung6.jpg',
      description: 'Pantai Sanggar juga disebut sebagai The Dreamland of Tulungagung. Di area tempat wisata Pantai Sanggar lumayan luas dan dibatasi bukit hijau di kanan kirinya. Alunan ombak di pantai selatan dan putih dan halusnya pasir pantai menjadi sajian terindah wisata di Tulungagung ini. Pemandangan yang indah serta udara yang sejuk membuat suasana semakin tentram dan nyaman. seluas mata memandang anda di suguhi pemandangan laut lepas yang berbatasan dengan samudra indonesia.',
      day: 'Everyday',
      time: '24 hours',
      ticket: 'Rp.5000,-',
    ),

    TourismPlace(
      name: 'Bendungan Wonorejo',
      location: 'Pagerwojo, Tulungagung',
      imageAsset: 'assets/images/tulungagung7.jpg',
      description: 'Waduk Wonorejo adalah waduk terbesar di Asia Tenggara dengan memiliki debit air 15.000 m3 per detik. Selain berfungsi sebagai PLTA dan irigasi, juga diperkenalkan sebagai objek "journey" yang menyuguhkan kenyamanan dan ketersediaan fasilitas rekreasi.',
      day: 'Everyday',
      time: '8am - 5pm',
      ticket: 'Rp.5000,-',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;

    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget){
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value){
                  setState(() {
                    if(value != null){
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                      }
                    });
                  },
                );
              },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
      );
  }
}