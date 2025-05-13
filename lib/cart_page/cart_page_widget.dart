import '/all_component/appbar/appbar_widget.dart';
import '/all_component/cartempty/cartempty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_page_model.dart';
export 'cart_page_model.dart';

class CartPageWidget extends StatefulWidget {
  const CartPageWidget({super.key});

  static String routeName = 'CartPage';
  static String routePath = 'cartPage';

  @override
  State<CartPageWidget> createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> {
  late CartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.appbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppbarWidget(
                    title: 'Cart',
                  ),
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      final cartlist = FFAppState().orderlist.toList();
                      if (cartlist.isEmpty) {
                        return Center(
                          child: Container(
                            width: 388.0,
                            height: 214.0,
                            child: CartemptyWidget(),
                          ),
                        );
                      }

                      return ListView.builder(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          24.0,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: cartlist.length,
                        itemBuilder: (context, cartlistIndex) {
                          final cartlistItem = cartlist[cartlistIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(CheckOutPageWidget.routeName);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 140.0,
                              child: custom_widgets.Swipablewidget(
                                width: double.infinity,
                                height: 140.0,
                                data: cartlistItem,
                                action: () async {
                                  FFAppState().removeAtIndexFromOrderlist(
                                      cartlistIndex);
                                  FFAppState().update(() {});
                                },
                                ontapcontainer: () async {
                                  context
                                      .pushNamed(CheckOutPageWidget.routeName);
                                },
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
