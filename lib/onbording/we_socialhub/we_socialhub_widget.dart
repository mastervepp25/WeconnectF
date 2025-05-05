import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'we_socialhub_model.dart';
export 'we_socialhub_model.dart';

/// Create a social media-style UI page similar to a Facebook feed using
/// FlutterFlow layout, designed for when there is no user-generated content
/// yet.
///
/// The page should include the following UI elements and placeholder states:
///
/// 1. **Top Navigation Bar**:
///    - Left side: Circular profile avatar (placeholder image)
///    - Center: Text input field with placeholder text: "What's on your
/// mind?"
///    - Right side: Image upload icon and message icon
///
/// 2. **Stories Section (Horizontal Scroll)**:
///    - A scrollable row of rounded story cards using placeholder content:
///      - First card: “Create connects” card with a plus "+" icon
///      - Additional cards: Use profile image placeholders, sample usernames
/// like "emilio@ait..." and default illustration (e.g., sci-fi character
/// placeholder)
///
/// 3. **Empty Feed State**:
///    - Centered card or container with a friendly empty state message like:
///      - “No posts to show yet. Be the first to share something!”
///    - Optionally include an icon or illustration representing an empty feed
/// (e.g., megaphone, paper airplane, or smiling emoji)
///
/// 4. **Placeholder Post Card (Example Post)**:
///    - Display a sample post from a placeholder user
/// (`kierdeeapp@gmail.com`) dated April 25
///    - Include:
///      - Sample profile picture
///      - Text content: "Hello, I'm just sharing my content🥰🥰"
///      - Below it, insert a banner placeholder promoting a sample event:
///        - Event Title: "ONLINE BUSINESS WEBINAR – Grow your Business"
///        - Date & Time: "02 May, 2025 – 08:00 AM"
///        - Buttons and labels: Register, phone number, address, website (use
/// dummy data)
///
/// 5. **Engagement Section (below post)**:
///    - Like icon with placeholder count
///    - Buttons: Like and Comment (inactive or showing 0)
///
/// 6. **Comment Input Field**:
///    - At the bottom: Input field with user avatar on the left, text field
/// ("Write a comment..."), and a send icon on the right
///
/// **Design Guidelines**:
/// - Use modern, clean styling with FlutterFlow widgets
/// - Add friendly microcopy for all empty/placeholder states
/// - Ensure consistent padding, rounded corners, and mobile responsiveness
class WeSocialhubWidget extends StatefulWidget {
  const WeSocialhubWidget({super.key});

  static String routeName = 'WeSocialhub';
  static String routePath = 'weSocialhub';

  @override
  State<WeSocialhubWidget> createState() => _WeSocialhubWidgetState();
}

class _WeSocialhubWidgetState extends State<WeSocialhubWidget> {
  late WeSocialhubModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeSocialhubModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 0.5,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1580489944761-15a19d654956?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxhdmF0YXJ8ZW58MHx8fHwxNzQ2Mzk3NTI1fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 230.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'What\'s on your mind?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.photo_camera_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.5,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      StreamBuilder<List<SocialhubRecord>>(
                        stream: querySocialhubRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).success,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<SocialhubRecord> columnSocialhubRecordList =
                              snapshot.data!;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children:
                                List.generate(columnSocialhubRecordList.length,
                                    (columnIndex) {
                              final columnSocialhubRecord =
                                  columnSocialhubRecordList[columnIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 8.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Color(0x28696969),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 12.0, 8.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1580489944761-15a19d654956?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxhdmF0YXJ8ZW58MHx8fHwxNzQ2Mzk3NTI1fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'kierdeeapp@gmail.com',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Text(
                                                        'April 25',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 16.0, 12.0),
                                          child: Text(
                                            'Hello, I\'m just sharing my content🥰🥰',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        if (columnSocialhubRecord.postPhoto ==
                                            '')
                                          Container(
                                            width: double.infinity,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  '800x400?business#1',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: FlutterFlowMediaDisplay(
                                              path: columnSocialhubRecord
                                                  .postPhoto,
                                              imageBuilder: (path) => ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  path,
                                                  width: 300.0,
                                                  height: 300.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              videoPlayerBuilder: (path) =>
                                                  FlutterFlowVideoPlayer(
                                                path: path,
                                                width: 300.0,
                                                autoPlay: false,
                                                looping: true,
                                                showControls: true,
                                                allowFullScreen: true,
                                                allowPlaybackSpeedMenu: false,
                                              ),
                                            ),
                                          ),
                                        if (columnSocialhubRecord.postVideo ==
                                            '')
                                          Container(
                                            width: double.infinity,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  '800x400?business#1',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: FlutterFlowMediaDisplay(
                                              path: columnSocialhubRecord
                                                  .postVideo,
                                              imageBuilder: (path) => ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  path,
                                                  width: 300.0,
                                                  height: 300.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              videoPlayerBuilder: (path) =>
                                                  FlutterFlowVideoPlayer(
                                                path: path,
                                                width: 300.0,
                                                autoPlay: false,
                                                looping: true,
                                                showControls: true,
                                                allowFullScreen: true,
                                                allowPlaybackSpeedMenu: false,
                                              ),
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 16.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.thumb_up,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  Text(
                                                    '24',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                              Text(
                                                '5 comments',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 12.0, 8.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Container(
                                                  width: 36.0,
                                                  height: 36.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1580489944761-15a19d654956?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxhdmF0YXJ8ZW58MHx8fHwxNzQ2Mzk3NTI1fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Container(
                                                    width: 250.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Write a comment...',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderRadius: 20.0,
                                                buttonSize: 40.0,
                                                icon: Icon(
                                                  Icons.send,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
