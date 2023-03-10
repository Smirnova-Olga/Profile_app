/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/icons/back.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/drawer.svg
  SvgGenImage get drawer => const SvgGenImage('assets/icons/drawer.svg');

  /// File path: assets/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/menu.svg');

  /// File path: assets/icons/placeholder.svg
  SvgGenImage get placeholder =>
      const SvgGenImage('assets/icons/placeholder.svg');

  /// File path: assets/icons/vector.svg
  SvgGenImage get vector => const SvgGenImage('assets/icons/vector.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [back, close, drawer, menu, placeholder, vector];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/avatar1.png
  AssetGenImage get avatar1 => const AssetGenImage('assets/images/avatar1.png');

  /// File path: assets/images/avatar2.png
  AssetGenImage get avatar2 => const AssetGenImage('assets/images/avatar2.png');

  /// File path: assets/images/avatar3.png
  AssetGenImage get avatar3 => const AssetGenImage('assets/images/avatar3.png');

  /// File path: assets/images/avatar4.png
  AssetGenImage get avatar4 => const AssetGenImage('assets/images/avatar4.png');

  /// File path: assets/images/rectangle10.png
  AssetGenImage get rectangle10 =>
      const AssetGenImage('assets/images/rectangle10.png');

  /// File path: assets/images/rectangle11.png
  AssetGenImage get rectangle11 =>
      const AssetGenImage('assets/images/rectangle11.png');

  /// File path: assets/images/rectangle12.png
  AssetGenImage get rectangle12 =>
      const AssetGenImage('assets/images/rectangle12.png');

  /// File path: assets/images/rectangle13.png
  AssetGenImage get rectangle13 =>
      const AssetGenImage('assets/images/rectangle13.png');

  /// File path: assets/images/rectangle14.png
  AssetGenImage get rectangle14 =>
      const AssetGenImage('assets/images/rectangle14.png');

  /// File path: assets/images/rectangle6.png
  AssetGenImage get rectangle6 =>
      const AssetGenImage('assets/images/rectangle6.png');

  /// File path: assets/images/rectangle7.png
  AssetGenImage get rectangle7 =>
      const AssetGenImage('assets/images/rectangle7.png');

  /// File path: assets/images/rectangle8.png
  AssetGenImage get rectangle8 =>
      const AssetGenImage('assets/images/rectangle8.png');

  /// File path: assets/images/rectangle9.png
  AssetGenImage get rectangle9 =>
      const AssetGenImage('assets/images/rectangle9.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        avatar,
        avatar1,
        avatar2,
        avatar3,
        avatar4,
        rectangle10,
        rectangle11,
        rectangle12,
        rectangle13,
        rectangle14,
        rectangle6,
        rectangle7,
        rectangle8,
        rectangle9
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
