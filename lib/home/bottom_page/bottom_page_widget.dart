import '/all_component/category_contain/category_contain_widget.dart';
import '/all_component/favourite_empty/favourite_empty_widget.dart';
import '/all_component/order_empty/order_empty_widget.dart';
import '/all_component/product_contanier/product_contanier_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'bottom_page_model.dart';
export 'bottom_page_model.dart';

class BottomPageWidget extends StatefulWidget {
  const BottomPageWidget({super.key});

  static String routeName = 'BottomPage';
  static String routePath = 'bottomPage';

  @override
  State<BottomPageWidget> createState() => _BottomPageWidgetState();
}

class _BottomPageWidgetState extends State<BottomPageWidget>
    with TickerProviderStateMixin {
  late BottomPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'categoryContainOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'productContanierOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _model.pageViewController ??=
                      PageController(initialPage: 0),
                  onPageChanged: (_) async {
                    FFAppState().bottomindex = _model.pageViewCurrentIndex;
                    FFAppState().update(() {});
                    _model.bottomadded = _model.pageViewCurrentIndex;
                    safeSetState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 63.0, 20.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hello👋',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'SF Pro Text',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      valueOrDefault<String>(
                                        currentUserDisplayName,
                                        'Content Creator',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 2.0, 16.0, 2.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            NotificationPageWidget.routeName);
                                      },
                                      child: Container(
                                        width: 44.0,
                                        height: 44.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          shape: BoxShape.circle,
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/notification.svg',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 2.0, 2.0, 2.0),
                                  child: Container(
                                    width: 44.0,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .lightGray,
                                      shape: BoxShape.circle,
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            CartPageWidget.routeName);
                                      },
                                      child: Icon(
                                        Icons.shopping_bag_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 12.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(SearchPageWidget.routeName);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 54.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).borderColor,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 15.0, 16.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.search_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Search here',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro Text',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Icon(
                                          Icons.tune,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              12.0,
                              0,
                              16.0,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        'assets/images/home_main.png',
                                        width: double.infinity,
                                        height: 150.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        38.0, 24.0, 0.0, 0.0),
                                    child: Text(
                                      'Income Balance',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Text',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        38.0, 48.0, 0.0, 0.0),
                                    child: Text(
                                      '₱ 0.00',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Text',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 96.0, 0.0, 0.0),
                                    child: Container(
                                      width: 116.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Payout/Widraw',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SF Pro Text',
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 24.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Categories',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            CategoriesPageWidget.routeName);
                                      },
                                      child: Text(
                                        'See All',
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro Text',
                                              letterSpacing: 0.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Builder(
                                  builder: (context) {
                                    final category = FFAppState()
                                        .categorylist
                                        .toList()
                                        .take(4)
                                        .toList();

                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(category.length,
                                                (categoryIndex) {
                                          final categoryItem =
                                              category[categoryIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                  CategoriesPageWidget
                                                      .routeName);
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .categoryContainModels
                                                  .getModel(
                                                categoryItem.id.toString(),
                                                categoryIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CategoryContainWidget(
                                                key: Key(
                                                  'Key5q1_${categoryItem.id.toString()}',
                                                ),
                                                tiltle: categoryItem.name,
                                                image: categoryItem.image,
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'categoryContainOnPageLoadAnimation']!);
                                        })
                                            .divide(SizedBox(width: 9.0))
                                            .addToStart(SizedBox(width: 20.0))
                                            .addToEnd(SizedBox(width: 20.0)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Just for you',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            JustForYouPageWidget.routeName);
                                      },
                                      child: Text(
                                        'See All',
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro Text',
                                              letterSpacing: 0.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final justlist = FFAppState()
                                        .detaillist
                                        .where((e) => e.isJust)
                                        .toList()
                                        .take(2)
                                        .toList();

                                    return GridView.builder(
                                      padding: EdgeInsets.fromLTRB(
                                        0,
                                        12.0,
                                        0,
                                        0,
                                      ),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 2;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 4;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 6;
                                          } else {
                                            return 8;
                                          }
                                        }(),
                                        crossAxisSpacing: 0.0,
                                        mainAxisSpacing: 16.0,
                                        childAspectRatio: 1.0,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: justlist.length,
                                      itemBuilder: (context, justlistIndex) {
                                        final justlistItem =
                                            justlist[justlistIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                ProducutDetailPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'detail': serializeParam(
                                                    justlistItem,
                                                    ParamType.DataStruct,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .productContanierModels1
                                                  .getModel(
                                                justlistItem.id.toString(),
                                                justlistIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ProductContanierWidget(
                                                key: Key(
                                                  'Key24s_${justlistItem.id.toString()}',
                                                ),
                                                colordata: justlistItem,
                                                onTapFav: () async {
                                                  if (justlistItem.isFav ==
                                                      true) {
                                                    FFAppState()
                                                        .updateDetaillistAtIndex(
                                                      justlistItem.id,
                                                      (e) => e..isFav = false,
                                                    );
                                                    safeSetState(() {});
                                                  } else {
                                                    FFAppState()
                                                        .updateDetaillistAtIndex(
                                                      justlistItem.id,
                                                      (e) => e..isFav = true,
                                                    );
                                                    safeSetState(() {});
                                                  }
                                                },
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'productContanierOnPageLoadAnimation']!),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 24.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'New Arrivals',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            NewArrivalPageWidget.routeName);
                                      },
                                      child: Text(
                                        'See All',
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'SF Pro Text',
                                              letterSpacing: 0.0,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 238.0,
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    final newlist = FFAppState()
                                        .detaillist
                                        .where((e) => e.isNew)
                                        .toList()
                                        .take(2)
                                        .toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        20.0,
                                        0,
                                        20.0,
                                        0,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: newlist.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(width: 16.0),
                                      itemBuilder: (context, newlistIndex) {
                                        final newlistItem =
                                            newlist[newlistIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 16.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                ProducutDetailPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'detail': serializeParam(
                                                    newlistItem,
                                                    ParamType.DataStruct,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              if (newlistItem.isFav == true) {
                                                FFAppState()
                                                    .updateDetaillistAtIndex(
                                                  newlistItem.id,
                                                  (e) => e..isFav = false,
                                                );
                                                safeSetState(() {});
                                              } else {
                                                FFAppState()
                                                    .updateDetaillistAtIndex(
                                                  newlistItem.id,
                                                  (e) => e..isFav = true,
                                                );
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              width: 364.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 3.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(
                                                      0.0,
                                                      3.0,
                                                    ),
                                                    spreadRadius: 0.0,
                                                  )
                                                ],
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(8.0),
                                                  bottomRight:
                                                      Radius.circular(8.0),
                                                  topLeft: Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, -1.0),
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  8.0),
                                                        ),
                                                        child: Image.network(
                                                          newlistItem.image,
                                                          width:
                                                              double.infinity,
                                                          height: 131.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            if (newlistItem
                                                                    .isFav ==
                                                                true) {
                                                              FFAppState()
                                                                  .updateDetaillistAtIndex(
                                                                newlistItem.id,
                                                                (e) => e
                                                                  ..isFav =
                                                                      false,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              FFAppState()
                                                                  .updateDetaillistAtIndex(
                                                                newlistItem.id,
                                                                (e) => e
                                                                  ..isFav =
                                                                      true,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                          child: Container(
                                                            width: 24.0,
                                                            height: 24.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                if (newlistItem
                                                                        .isFav ==
                                                                    true) {
                                                                  return Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 16.0,
                                                                  );
                                                                } else {
                                                                  return Icon(
                                                                    Icons
                                                                        .favorite_border,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 16.0,
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  8.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: Text(
                                                        newlistItem.title,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'SF Pro Text',
                                                              fontSize: 17.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              lineHeight: 1.5,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      newlistItem.price,
                                                      maxLines: 1,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'SF Pro Text',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            lineHeight: 1.5,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation']!),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 63.0, 0.0, 21.0),
                          child: Text(
                            'My Order',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.5,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(0.0, 0),
                                  child: TabBar(
                                    labelColor:
                                        FlutterFlowTheme.of(context).primary,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context).black40,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    unselectedLabelStyle: TextStyle(),
                                    indicatorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    padding: EdgeInsets.all(4.0),
                                    tabs: [
                                      Tab(
                                        text: 'Active',
                                      ),
                                      Tab(
                                        text: 'Completed',
                                      ),
                                      Tab(
                                        text: 'Cancelled',
                                      ),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [
                                        () async {},
                                        () async {},
                                        () async {}
                                      ][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          if (_model.aorder == false) {
                                            return ListView(
                                              padding: EdgeInsets.fromLTRB(
                                                0,
                                                24.0,
                                                0,
                                                24.0,
                                              ),
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 16.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .shadowColor,
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'ID',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro Text',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '526565',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black40,
                                                                          fontSize:
                                                                              17.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '22 Jan,2024',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black40,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/jfy2.png',
                                                                    width: 89.0,
                                                                    height:
                                                                        89.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Camel water color',
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              7.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '\$20.00',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Qty:1',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        CartPageWidget
                                                                            .routeName);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryLight,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              44.0),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            7.0,
                                                                            0.0,
                                                                            7.0),
                                                                        child:
                                                                            Text(
                                                                          'Order Cancel',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        TrackOrderPageWidget
                                                                            .routeName);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              44.0),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            7.0,
                                                                            0.0,
                                                                            7.0),
                                                                        child:
                                                                            Text(
                                                                          'Track Order',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 16.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .shadowColor,
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'ID',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro Text',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '526565',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black40,
                                                                          fontSize:
                                                                              17.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '22 Jan,2024',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black40,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/jfy4.png',
                                                                    width: 89.0,
                                                                    height:
                                                                        89.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Cup of color pencils',
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              7.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '\$15.00',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Qty:1',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        CartPageWidget
                                                                            .routeName);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryLight,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              44.0),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            7.0,
                                                                            0.0,
                                                                            7.0),
                                                                        child:
                                                                            Text(
                                                                          'Order Cancel',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        TrackOrderPageWidget
                                                                            .routeName);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              44.0),
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            7.0,
                                                                            0.0,
                                                                            7.0),
                                                                        child:
                                                                            Text(
                                                                          'Track Order',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            );
                                          } else {
                                            return wrapWithModel(
                                              model: _model.orderEmptyModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OrderEmptyWidget(),
                                            );
                                          }
                                        },
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (_model.corder == false) {
                                            return ListView(
                                              padding: EdgeInsets.fromLTRB(
                                                0,
                                                24.0,
                                                0,
                                                24.0,
                                              ),
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 16.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .shadowColor,
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'ID',
                                                                  maxLines: 1,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro Text',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '1452163',
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black40,
                                                                          fontSize:
                                                                              17.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '20 March,2024',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black40,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/color7.png',
                                                                    width: 89.0,
                                                                    height:
                                                                        89.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Office accessories',
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              7.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '\$22.00',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Qty:1',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 16.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .shadowColor,
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'ID',
                                                                  maxLines: 1,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro Text',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '500565',
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black40,
                                                                          fontSize:
                                                                              17.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '10 March,2024',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black40,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/jfy7.png',
                                                                    width: 89.0,
                                                                    height:
                                                                        89.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Business fountain..',
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              7.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '\$12.00f',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Qty:1',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 16.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .shadowColor,
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'ID',
                                                                  maxLines: 1,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SF Pro Text',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        lineHeight:
                                                                            1.5,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '526565',
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).black40,
                                                                          fontSize:
                                                                              17.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '12 March,2024',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .black40,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/new3.png',
                                                                    width: 89.0,
                                                                    height:
                                                                        89.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Office stationery with glue',
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'SF Pro Text',
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              7.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '\$22.50',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Qty:1',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            );
                                          } else {
                                            return wrapWithModel(
                                              model: _model.orderEmptyModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OrderEmptyWidget(),
                                            );
                                          }
                                        },
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (_model.canorder == false) {
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 2.0, 0.0),
                                              child: ListView(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  24.0,
                                                  0,
                                                  24.0,
                                                ),
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 16.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .shadowColor,
                                                            offset: Offset(
                                                              0.0,
                                                              4.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'ID',
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            1.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '145663',
                                                                      maxLines:
                                                                          1,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                      child:
                                                                          Text(
                                                                        '12 Dec,2023',
                                                                        maxLines:
                                                                            1,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'SF Pro Text',
                                                                              color: FlutterFlowTheme.of(context).black40,
                                                                              fontSize: 17.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              lineHeight: 1.5,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0.0,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black40,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/jfy1.png',
                                                                      width:
                                                                          89.0,
                                                                      height:
                                                                          89.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Still life of drawing',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                7.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '\$40.00',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'SF Pro Text',
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Qty:1',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'SF Pro Text',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 16.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .shadowColor,
                                                            offset: Offset(
                                                              0.0,
                                                              4.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'ID',
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'SF Pro Text',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            1.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '526500',
                                                                      maxLines:
                                                                          1,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'SF Pro Text',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).black40,
                                                                            fontSize:
                                                                                17.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                      child:
                                                                          Text(
                                                                        '12 March,2024',
                                                                        maxLines:
                                                                            1,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'SF Pro Text',
                                                                              color: FlutterFlowTheme.of(context).black40,
                                                                              fontSize: 17.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              lineHeight: 1.5,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0.0,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .black40,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/table.png',
                                                                      width:
                                                                          89.0,
                                                                      height:
                                                                          89.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Props on table',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'SF Pro Text',
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                7.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '\$10.00',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'SF Pro Text',
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Qty:1',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'SF Pro Text',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    lineHeight: 1.5,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            );
                                          } else {
                                            return wrapWithModel(
                                              model: _model.orderEmptyModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OrderEmptyWidget(),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 63.0, 0.0, 16.0),
                          child: Text(
                            'Favorite',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.5,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final waterlist = FFAppState()
                                    .detaillist
                                    .where((e) => e.isFav)
                                    .toList();
                                if (waterlist.isEmpty) {
                                  return Container(
                                    width: 388.0,
                                    height: 214.0,
                                    child: FavouriteEmptyWidget(),
                                  );
                                }

                                return GridView.builder(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    25.0,
                                    0,
                                    24.0,
                                  ),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 2;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 4;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 6;
                                      } else {
                                        return 8;
                                      }
                                    }(),
                                    crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 16.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: waterlist.length,
                                  itemBuilder: (context, waterlistIndex) {
                                    final waterlistItem =
                                        waterlist[waterlistIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            ProducutDetailPageWidget.routeName,
                                            queryParameters: {
                                              'detail': serializeParam(
                                                waterlistItem,
                                                ParamType.DataStruct,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: wrapWithModel(
                                          model: _model.productContanierModels2
                                              .getModel(
                                            waterlistIndex.toString(),
                                            waterlistIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ProductContanierWidget(
                                            key: Key(
                                              'Keyshl_${waterlistIndex.toString()}',
                                            ),
                                            colordata: waterlistItem,
                                            onTapFav: () async {
                                              if (waterlistItem.isFav == true) {
                                                FFAppState()
                                                    .updateDetaillistAtIndex(
                                                  waterlistItem.id,
                                                  (e) => e..isFav = false,
                                                );
                                                safeSetState(() {});
                                              } else {
                                                FFAppState()
                                                    .updateDetaillistAtIndex(
                                                  waterlistItem.id,
                                                  (e) => e..isFav = true,
                                                );
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 63.0, 0.0, 16.0),
                          child: Text(
                            'Profile',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.5,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation3']!),
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              24.0,
                              0,
                              24.0,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              Image.asset(
                                'assets/images/profile.png',
                                width: 87.0,
                                height: 87.0,
                                fit: BoxFit.contain,
                                alignment: Alignment(0.0, -1.0),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  'Jenny Wilson',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                              Text(
                                'willie.jennings@example.com',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Text',
                                      color:
                                          FlutterFlowTheme.of(context).black40,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.2,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 26.0, 20.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        MyProfilePageWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 16.0,
                                          color: Color(0x14000000),
                                          offset: Offset(
                                            0.0,
                                            4.0,
                                          ),
                                          spreadRadius: 0.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/pmp_ic.svg',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Profile',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/arrow_right_ic.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        NotificationPageWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 16.0,
                                          color: FlutterFlowTheme.of(context)
                                              .shadowColor,
                                          offset: Offset(
                                            0.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/notifications_FILL0_wght400_GRAD0_opsz24.svg',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Notification',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/arrow_right.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 16.0,
                                        color: FlutterFlowTheme.of(context)
                                            .shadowColor,
                                        offset: Offset(
                                          0.0,
                                          4.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/pSetting.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Settings',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Text',
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/arrow_right.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        SecurityPageWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 16.0,
                                          color: FlutterFlowTheme.of(context)
                                              .shadowColor,
                                          offset: Offset(
                                            0.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/security2.png',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Security',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/arrow_right.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .pushNamed(AboutusPageWidget.routeName);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 16.0,
                                          color: FlutterFlowTheme.of(context)
                                              .shadowColor,
                                          offset: Offset(
                                            0.0,
                                            4.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/about.svg',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'About',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontSize: 17.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.5,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: SvgPicture.asset(
                                              'assets/images/arrow_right.svg',
                                              width: 20.0,
                                              height: 20.0,
                                              fit: BoxFit.contain,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 16.0,
                                        color: FlutterFlowTheme.of(context)
                                            .shadowColor,
                                        offset: Offset(
                                          0.0,
                                          4.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/logout.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Logout',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'SF Pro Text',
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/arrow_right.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 16.0,
                    color: FlutterFlowTheme.of(context).shadowColor,
                    offset: Offset(
                      0.0,
                      4.0,
                    ),
                  )
                ],
              ),
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomadded = 0;
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: _model.bottomadded == 0
                                      ? FlutterFlowTheme.of(context)
                                          .primaryLight
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    if (_model.bottomadded == 0) {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/home_bottom_fill.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/home_bottom.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            Text(
                              'Home',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Text',
                                    color: _model.bottomadded == 0
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).black40,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ]
                              .divide(SizedBox(height: 8.0))
                              .addToStart(SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomadded = 1;
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: _model.bottomadded == 1
                                      ? FlutterFlowTheme.of(context)
                                          .primaryLight
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    if (_model.bottomadded == 1) {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/order_bottom_fill.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    } else {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/order_bottom.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Order',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Text',
                                      color: _model.bottomadded == 1
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .black40,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 8.0))
                              .addToStart(SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomadded = 2;
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: _model.bottomadded == 2
                                      ? FlutterFlowTheme.of(context)
                                          .primaryLight
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    if (_model.bottomadded == 2) {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/favourite_fill_bottom.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Icon(
                                        Icons.favorite_border,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            AutoSizeText(
                              'Favourite',
                              maxLines: 1,
                              minFontSize: 13.0,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Text',
                                    color: _model.bottomadded == 2
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).black40,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ]
                              .divide(SizedBox(height: 8.0))
                              .addToStart(SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.bottomadded = 3;
                                safeSetState(() {});
                                await _model.pageViewController?.animateToPage(
                                  3,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: _model.bottomadded == 3
                                      ? FlutterFlowTheme.of(context)
                                          .primaryLight
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                child: Builder(
                                  builder: (context) {
                                    if (_model.bottomadded == 3) {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/profile_fill_bottom.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/basket_profile.svg',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ),
                            Text(
                              'Profile',
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Text',
                                    color: _model.bottomadded == 3
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context).black40,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ]
                              .divide(SizedBox(height: 8.0))
                              .addToStart(SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
