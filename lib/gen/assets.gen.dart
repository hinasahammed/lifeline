/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/blood_drop.png
  AssetGenImage get bloodDrop =>
      const AssetGenImage('assets/images/blood_drop.png');

  /// File path: assets/images/blood_request.png
  AssetGenImage get bloodRequest =>
      const AssetGenImage('assets/images/blood_request.png');

  /// File path: assets/images/donate_blood.png
  AssetGenImage get donateBlood =>
      const AssetGenImage('assets/images/donate_blood.png');

  /// File path: assets/images/find_donor.png
  AssetGenImage get findDonor =>
      const AssetGenImage('assets/images/find_donor.png');

  /// File path: assets/images/image_place_holder.png
  AssetGenImage get imagePlaceHolder =>
      const AssetGenImage('assets/images/image_place_holder.png');

  /// File path: assets/images/lgieline_logo.png
  AssetGenImage get lgielineLogo =>
      const AssetGenImage('assets/images/lgieline_logo.png');

  /// File path: assets/images/lifeline.png
  AssetGenImage get lifeline =>
      const AssetGenImage('assets/images/lifeline.png');

  /// File path: assets/images/lifeline_logo.png
  AssetGenImage get lifelineLogo =>
      const AssetGenImage('assets/images/lifeline_logo.png');

  /// File path: assets/images/onboard_one.png
  AssetGenImage get onboardOne =>
      const AssetGenImage('assets/images/onboard_one.png');

  /// File path: assets/images/onboard_three.png
  AssetGenImage get onboardThree =>
      const AssetGenImage('assets/images/onboard_three.png');

  /// File path: assets/images/onboard_two.png
  AssetGenImage get onboardTwo =>
      const AssetGenImage('assets/images/onboard_two.png');

  /// File path: assets/images/profile_image_placeholder.png
  AssetGenImage get profileImagePlaceholder =>
      const AssetGenImage('assets/images/profile_image_placeholder.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bloodDrop,
        bloodRequest,
        donateBlood,
        findDonor,
        imagePlaceHolder,
        lgielineLogo,
        lifeline,
        lifelineLogo,
        onboardOne,
        onboardThree,
        onboardTwo,
        profileImagePlaceholder
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
