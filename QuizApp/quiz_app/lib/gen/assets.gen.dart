import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage a1 = AssetGenImage('assets/1.png');
  static const AssetGenImage a2 = AssetGenImage('assets/2.png');
  static const AssetGenImage a3 = AssetGenImage('assets/3.png');
  static const AssetGenImage a4 = AssetGenImage('assets/4.png');
  static const AssetGenImage checkB = AssetGenImage('assets/CHECK B.png');
  static const AssetGenImage ellipse75 = AssetGenImage('assets/Ellipse75.png');
  static const AssetGenImage gRADINET2Copy = AssetGenImage(
    'assets/GRADINET (2) copy.png',
  );
  static const AssetGenImage gradinet2 = AssetGenImage(
    'assets/GRADINET (2).png',
  );
  static const AssetGenImage gradinet = AssetGenImage('assets/GRADINET.png');
  static const AssetGenImage pushA = AssetGenImage('assets/PUSH A .png');
  static const AssetGenImage pushB = AssetGenImage('assets/PUSH B.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
    a1,
    a2,
    a3,
    a4,
    checkB,
    ellipse75,
    gRADINET2Copy,
    gradinet2,
    gradinet,
    pushA,
    pushB,
  ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
    double width = 24,
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
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
