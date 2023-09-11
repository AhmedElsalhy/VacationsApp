import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final T Function(BuildContext) vmBuilder;
  final Widget Function(BuildContext, T) builder;

  const BaseView({super.key, required this.vmBuilder, required this.builder});

  @override
  State<BaseView<T>> createState() => _BaseView<T>();
}

class _BaseView<T extends BaseViewModel> extends State<BaseView<T>> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: widget.vmBuilder(context),
      child: Consumer<T>(
        builder: _buildScreenContent,
      ),
    );
  }

  Widget _buildScreenContent(context, T viewModel, child) {
    return viewModel.isInitialized
        ? Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Stack(
            children: [
              widget.builder(context, viewModel),
              Visibility(
                visible: viewModel.isLoading,
                child: const Center(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
            ],
          );
  }
}
