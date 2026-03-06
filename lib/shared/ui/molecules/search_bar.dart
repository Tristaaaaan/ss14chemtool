import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/appdesign/design_tokens.dart';

class RequestSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final int minLength;
  final Duration debounceDuration;

  const RequestSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
    this.minLength = 3,
    this.debounceDuration = const Duration(milliseconds: 400),
  });

  @override
  State<RequestSearchBar> createState() => _RequestSearchBarState();
}

class _RequestSearchBarState extends State<RequestSearchBar> {
  Timer? _debounce;
  bool _isSearching = false;

  void _onSearchChanged(String value) {
    _debounce?.cancel();

    setState(() {
      _isSearching = true;
    });

    _debounce = Timer(widget.debounceDuration, () {
      final trimmed = value.trim();
      if (trimmed.length >= widget.minLength) {
        widget.onChanged?.call(trimmed);
      } else {
        widget.onChanged?.call('');
      }

      setState(() {
        _isSearching = false;
      });
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: widget.controller,
      builder: (context, value, child) {
        final hasText = value.text.isNotEmpty;

        return TextField(
          controller: widget.controller,
          maxLength: 10,
          onChanged: _onSearchChanged,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: AppTextSize.xs,
            color: Colors.white.withValues(alpha: hasText ? 1.0 : 0.5),
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md5),
              borderSide: BorderSide(color: Colors.white.withValues(alpha: .2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md5),
              borderSide: const BorderSide(color: Colors.white),
            ),
            hintText: 'Search for chemicals',
            hintStyle: TextStyle(
              color: Colors.white.withValues(alpha: hasText ? 1.0 : 0.5),
            ),
            counterText: '',
            filled: true,
            fillColor: Colors.transparent,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white.withValues(alpha: hasText ? 1.0 : 0.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md5),
              borderSide: BorderSide.none,
            ),
            suffixIcon: (hasText)
                ? IconButton(
                    icon: const Icon(Icons.close, size: 20),
                    onPressed: _isSearching
                        ? null
                        : () {
                            widget.controller.clear();
                            widget.onChanged?.call('');
                          },
                  )
                : null,
          ),
        );
      },
    );
  }
}
