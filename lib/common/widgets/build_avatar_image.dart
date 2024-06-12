import 'dart:typed_data';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
///network avatar image
class BuildAvatarImageNetwork extends StatelessWidget {
  const BuildAvatarImageNetwork({
    super.key,
    required this.image,
    this.radius = 30,
  });
  final String? image;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: image != null
            ? CircleAvatar(
                radius: radius,
                backgroundImage: CachedNetworkImageProvider(
                  image!,
                ),
              )
            : CircleAvatar(
                radius: radius,
                backgroundColor: Colors.grey.shade800,
                backgroundImage: const AssetImage(
                  'assets/icons/person.png',
                ),
              ));
  }
}
///network avatar image
class BuildAvatarImageLocal extends StatelessWidget {
  const BuildAvatarImageLocal({
    super.key,
    required this.image,
    this.radius = 30,
  });
  final Uint8List? image;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: image != null
            ? CircleAvatar(
                radius: radius,
                backgroundImage: MemoryImage(image!)
              )
            : CircleAvatar(
                radius: radius,
                backgroundColor: Colors.grey.shade800,
                backgroundImage: const AssetImage(
                  'assets/icons/person.png',
                ),
              ));
  }
}