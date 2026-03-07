import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ss14chemtool/core/appdesign/design_tokens.dart';

class FormTextField extends StatefulWidget {
  final String fieldKey;
  final bool isRequired;
  final List<TextInputFormatter>? inputFormatters;
  final String labelText;
  final void Function(String)? onChanged;
  final bool isUpdate;
  final String? initialValue;
  final bool showSuffix;
  final String? suffix;
  final bool isText;
  final bool readOnly;
  final void Function()? onTap;
  final TextEditingController? controller; // <-- new

  const FormTextField({
    super.key,
    this.isRequired = true,
    required this.fieldKey,
    this.inputFormatters,
    required this.labelText,
    this.onChanged,
    this.suffix,
    this.isUpdate = false,
    this.initialValue,
    this.showSuffix = false,
    this.isText = false,
    this.readOnly = false,
    this.onTap,
    this.controller, // <-- new
  });

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode; // <-- new
  bool _isControllerOwned = false; // track if we created it
  bool _isFocused = false; // track focus state

  @override
  void initState() {
    super.initState();

    // Use parent controller if provided, otherwise create one
    if (widget.controller != null) {
      _controller = widget.controller!;
    } else {
      _controller = TextEditingController(
        text: widget.isUpdate ? widget.initialValue ?? "" : "",
      );
      _isControllerOwned = true;
    }

    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });

    if (_controller.text.isNotEmpty && widget.onChanged != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onChanged!(_controller.text);
      });
    }
  }

  @override
  void didUpdateWidget(covariant FormTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_isControllerOwned &&
        widget.initialValue != oldWidget.initialValue &&
        widget.isUpdate) {
      _controller.text = widget.initialValue ?? "";
    }
  }

  @override
  void dispose() {
    if (_isControllerOwned) {
      _controller.dispose();
    }
    _focusNode.dispose(); // dispose focus node
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: widget.labelText,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: AppTextSize.xs,
              color: _isFocused
                  ? Colors.white
                  : Theme.of(
                      context,
                    ).textTheme.bodyLarge?.color?.withValues(alpha: 0.5),
            ),
            children: widget.isRequired
                ? const [
                    TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]
                : [],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            key: Key(widget.fieldKey),
            controller: _controller,
            focusNode: _focusNode, // <-- assign focus node
            readOnly: widget.readOnly,
            onTap: widget.onTap,
            keyboardType: widget.isText
                ? TextInputType.text
                : const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: widget.inputFormatters,
            maxLines: 2,
            minLines: 1,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2,
                ),
              ),
              suffixText: widget.showSuffix ? widget.suffix : null,
            ),
            onChanged: widget.onChanged,
          ),
        ),
      ],
    );
  }
}
