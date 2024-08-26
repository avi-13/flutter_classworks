import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HospitalListScreen extends StatelessWidget {
  final List<Hospital> hospitals = [
    Hospital(
      name: 'City Hospital',
      imageUrl:
          'https://th.bing.com/th/id/OIP.CRACOhG4JMd5LZFiPxwtMQHaFj?rs=1&pid=ImgDetMain',
    ),
    Hospital(
      name: 'Community Medical Center',
      imageUrl:
          'https://th.bing.com/th/id/R.8ecfe6fbeefe159a1608daed440fa443?rik=4OqjImvSPXebmQ&pid=ImgRaw&r=0',
    ),
  ];

  HospitalListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital List'),
      ),
      body: ListView.builder(
        itemCount: hospitals.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return HospitalCard(hospital: hospitals[index]);
        },
      ),
    );
  }
}

class Hospital {
  final String name;
  final String imageUrl;

  Hospital({required this.name, required this.imageUrl});
}

class HospitalCard extends StatelessWidget {
  final Hospital hospital;

  const HospitalCard({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FractionallySizedBox(
            widthFactor: 1.0,
            child: CachedNetworkImage(
              imageBuilder: (context, imageProvider) => Container(
                height: 250,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              imageUrl: hospital.imageUrl,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hospital.name,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
