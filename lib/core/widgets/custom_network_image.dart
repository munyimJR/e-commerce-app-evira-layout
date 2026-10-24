import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final int? memCacheWidth;
  final int? memCacheHeight;
  final int? maxWidthDiskCache;
  final int? maxHeightDiskCache;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = 0,
    this.memCacheWidth,
    this.memCacheHeight,
    this.maxWidthDiskCache,
    this.maxHeightDiskCache,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final placeholderColor = isDark ? const Color(0xFF1F222A) : const Color(0xFFF3F3F3);

    final dpr = MediaQuery.maybeOf(context)?.devicePixelRatio ?? 2.0;
    final effectiveMemWidth = memCacheWidth ??
        ((width != null && width!.isFinite) ? (width! * dpr).round() : null);
    final effectiveMemHeight = memCacheHeight ??
        ((height != null && height!.isFinite) ? (height! * dpr).round() : null);

    Widget imageWidget = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      memCacheWidth: effectiveMemWidth,
      memCacheHeight: effectiveMemHeight,
      maxWidthDiskCache: maxWidthDiskCache ?? 1200,
      maxHeightDiskCache: maxHeightDiskCache ?? 1200,
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        color: placeholderColor,
        child: const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        color: placeholderColor,
        child: Icon(
          Icons.image_not_supported_outlined,
          color: isDark ? Colors.white38 : Colors.black26,
        ),
      ),
    );

    if (borderRadius > 0) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: imageWidget,
      );
    }

    return imageWidget;
  }
}
