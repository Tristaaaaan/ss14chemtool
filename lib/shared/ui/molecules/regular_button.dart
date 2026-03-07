import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../core/appdesign/design_tokens.dart';
import 'cubit/regular_button_cubit.dart';

class RegularButton extends StatelessWidget {
  final bool? withIcon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final String buttonKey;
  final double? radius;
  final double? height;
  final bool? withoutLoading;
  final void Function()? onTap;
  final bool? suffixIcon;
  final bool? withBorder;
  final double width;
  const RegularButton({
    super.key,
    this.withBorder = false,
    this.withIcon = true,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.buttonKey,
    this.withoutLoading = false,
    this.onTap,

    this.radius,
    this.height,
    this.suffixIcon = true,

    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegularButtonLoadingCubit, Map<String, bool>>(
      builder: (context, state) {
        final isLoading = state[buttonKey] ?? false;

        return GestureDetector(
          onTap: withoutLoading!
              ? onTap
              : isLoading
              ? () {}
              : () async {
                  onTap?.call();
                },
          child: GestureDetector(
            onTap: withoutLoading!
                ? onTap
                : isLoading
                ? () {}
                : () async {
                    onTap!();
                  },
            child: Container(
              height: height ?? 50,
              width: width,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(radius ?? 50),
                border: withBorder!
                    ? Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 3,
                      )
                    : null,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: isLoading
                          ? Center(
                              child: LoadingAnimationWidget.stretchedDots(
                                color: withIcon == true
                                    ? Colors
                                          .white //Theme.of(context).colorScheme.primaryContainer
                                    : Colors.white,
                                size: 30,
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  text,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: AppTextSize.xs,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                ),

                                if (suffixIcon!) ...[
                                  const SizedBox(width: 10),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                  ),
                                ],
                              ],
                            ),
                    ),
                    if (withIcon == true) const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
