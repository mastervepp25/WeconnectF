import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_settings_model.dart';
export 'profile_settings_model.dart';

/// Design a user profile settings screen for a mobile app named "WeConnect"
/// using FlutterFlow layout.
///
/// The screen should include the following components:
///
/// 1. **Top Navigation Bar**:
///    - App name and logo: "WC WeConnect" on the left
///    - Right side: Icons for Notifications (bell), Messages (envelope), and
/// Share (arrow)
///
/// 2. **User Profile Header Card**:
///    - Circular avatar with profile image (with a small camera icon overlay
/// at the bottom-right for upload/change)
///    - Display name: "contento koh"
///    - User ID: "ID: MBR-46063"
///    - Badge: "Not Verified" (in a soft orange pill-style badge)
///
/// 3. **ACCOUNT Section** (Title in light gray uppercase):
///    - List items with icons and navigation arrows:
///      - **Edit Profile** (pencil icon)
///      - **Verify Account** (shield icon, highlight this in blue to show
/// it's clickable)
///      - **Change Password** (lock icon)
///      - **Preferences** (slider icon)
///      - **Settings** (gear icon)
///
/// 4. **Optional Extension Section**:
///    - Section header: "ACTIVITY & FINANCE" (gray text, same style as
/// "ACCOUNT")
///    - Add placeholder area for upcoming items (not shown in image but part
/// of design hint)
///
/// 5. **Bottom Navigation Bar**:
///    - 5 icons, centered WC button:
///      - Notepad (left)
///      - Wrench/tools
///      - Center WC logo (highlighted/active)
///      - Briefcase (projects)
///      - User/profile (active or highlighted when on this page)
///
/// Use a clean, rounded UI design with ample padding, soft background
/// shadows, and clear visual hierarchy. Prioritize mobile responsiveness and
/// intuitive interaction patterns.
class ProfileSettingsWidget extends StatefulWidget {
  const ProfileSettingsWidget({super.key});

  static String routeName = 'ProfileSettings';
  static String routePath = 'profileSettings';

  @override
  State<ProfileSettingsWidget> createState() => _ProfileSettingsWidgetState();
}

class _ProfileSettingsWidgetState extends State<ProfileSettingsWidget> {
  late ProfileSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSettingsModel());

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
        backgroundColor: Color(0xFFF7F7F7),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(),
                child: Container(
                  width: 45.0,
                  height: 45.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/973/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'WeConnect',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: FlutterFlowTheme.of(context).titleLarge,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.notifications_none,
                      color: Color(0xFF757575),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.mail_outline,
                      color: Color(0xFF757575),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.share,
                      color: Color(0xFF757575),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7F7),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x15000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF2F2F2),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      '500x500?person',
                                                    ).image,
                                                  ),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Color(0xFFEEEEEE),
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: Container(
                                                  width: 28.0,
                                                  height: 28.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.camera_alt,
                                                      color: Colors.white,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 5.0, 10.0, 5.0),
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFEF2E6),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Not Verified',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall,
                                                        color: Colors.orange,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'contento koh',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .titleMedium,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        'ID: MBR-46063',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                              color: Color(0xFF757575),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Text(
                                'ACCOUNT',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      color: Color(0xFF9E9E9E),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x15000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.edit,
                                          color: Color(0xFF757575),
                                          size: 24.0,
                                        ),
                                        title: Text(
                                          'Edit Profile',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFF9E9E9E),
                                          size: 20.0,
                                        ),
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 12.0, 16.0, 12.0),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      indent: 16.0,
                                      endIndent: 16.0,
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.verified_user,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        title: Text(
                                          'Verify Account',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFF9E9E9E),
                                          size: 20.0,
                                        ),
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 12.0, 16.0, 12.0),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      indent: 16.0,
                                      endIndent: 16.0,
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.lock,
                                          color: Color(0xFF757575),
                                          size: 24.0,
                                        ),
                                        title: Text(
                                          'Change Password',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFF9E9E9E),
                                          size: 20.0,
                                        ),
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 12.0, 16.0, 12.0),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      indent: 16.0,
                                      endIndent: 16.0,
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.tune,
                                          color: Color(0xFF757575),
                                          size: 24.0,
                                        ),
                                        title: Text(
                                          'Preferences',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFF9E9E9E),
                                          size: 20.0,
                                        ),
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 12.0, 16.0, 12.0),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      indent: 16.0,
                                      endIndent: 16.0,
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.settings,
                                          color: Color(0xFF757575),
                                          size: 24.0,
                                        ),
                                        title: Text(
                                          'Settings',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.chevron_right,
                                          color: Color(0xFF9E9E9E),
                                          size: 20.0,
                                        ),
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 12.0, 16.0, 12.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
