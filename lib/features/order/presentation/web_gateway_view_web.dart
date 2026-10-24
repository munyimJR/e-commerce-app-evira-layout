import 'dart:js_interop';
import 'dart:ui_web' as ui_web;
import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

class WebGatewayIframeView extends StatefulWidget {
  final String paymentUrl;
  final VoidCallback onSuccess;
  final VoidCallback onFail;
  final VoidCallback onCancel;

  const WebGatewayIframeView({
    super.key,
    required this.paymentUrl,
    required this.onSuccess,
    required this.onFail,
    required this.onCancel,
  });

  @override
  State<WebGatewayIframeView> createState() => _WebGatewayIframeViewState();
}

class _WebGatewayIframeViewState extends State<WebGatewayIframeView> {
  late final String _viewType;
  bool _completed = false;
  web.EventListener? _messageListener;

  @override
  void initState() {
    super.initState();
    _viewType = 'aamarpay-iframe-${DateTime.now().millisecondsSinceEpoch}';

    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final iframe = web.HTMLIFrameElement()
        ..src = widget.paymentUrl
        ..style.border = 'none'
        ..style.width = '100%'
        ..style.height = '100%';

      iframe.setAttribute('allow', 'payment');

      iframe.addEventListener(
        'load',
        (web.Event event) {
          _checkIframeLocation(iframe);
        }.toJS,
      );

      return iframe;
    });

    _messageListener = (web.Event event) {
      if (event.isA<web.MessageEvent>()) {
        final messageEvent = event as web.MessageEvent;
        final dataStr = messageEvent.data?.toString().toLowerCase() ?? '';
        if (dataStr.contains('success') || dataStr.contains('successful')) {
          _handleSuccess();
        } else if (dataStr.contains('fail')) {
          _handleFail();
        } else if (dataStr.contains('cancel')) {
          _handleCancel();
        }
      }
    }.toJS;

    web.window.addEventListener('message', _messageListener!);
  }

  void _checkIframeLocation(web.HTMLIFrameElement iframe) {
    if (_completed) return;
    try {
      final href = iframe.contentWindow?.location.href.toLowerCase();
      if (href != null && href.isNotEmpty) {
        if (href.contains('payment_callback') || href.contains('success')) {
          _handleSuccess();
        } else if (href.contains('fail')) {
          _handleFail();
        } else if (href.contains('cancel')) {
          _handleCancel();
        }
      }
    } catch (_) {
      // Cross-origin restriction before callback redirect
    }
  }

  void _handleSuccess() {
    if (_completed || !mounted) return;
    _completed = true;
    widget.onSuccess();
  }

  void _handleFail() {
    if (_completed || !mounted) return;
    _completed = true;
    widget.onFail();
  }

  void _handleCancel() {
    if (_completed || !mounted) return;
    _completed = true;
    widget.onCancel();
  }

  @override
  void dispose() {
    if (_messageListener != null) {
      web.window.removeEventListener('message', _messageListener!);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: _viewType);
  }
}

Widget buildWebGatewayView({
  required String paymentUrl,
  required VoidCallback onSuccess,
  required VoidCallback onFail,
  required VoidCallback onCancel,
}) {
  return WebGatewayIframeView(
    paymentUrl: paymentUrl,
    onSuccess: onSuccess,
    onFail: onFail,
    onCancel: onCancel,
  );
}
