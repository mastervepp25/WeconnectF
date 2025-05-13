import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'category_contain_model.dart';
export 'category_contain_model.dart';

class CategoryContainWidget extends StatefulWidget {
  const CategoryContainWidget({
    super.key,
    required this.tiltle,
    required this.image,
  });

  final String? tiltle;
  final String? image;

  @override
  State<CategoryContainWidget> createState() => _CategoryContainWidgetState();
}

class _CategoryContainWidgetState extends State<CategoryContainWidget> {
  late CategoryContainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryContainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 85.0,
            height: 85.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryLight,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.network(
                  widget.image!,
                  width: 38.0,
                  height: 38.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.tiltle,
              'Calculator',
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'SF Pro Text',
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  lineHeight: 1.5,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
