import 'package:proyectofinal/flutter_flow_theme.dart';
import 'package:proyectofinal/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RecetaWidget extends StatefulWidget {
  const RecetaWidget({Key? key}) : super(key: key);

  @override
  _RecetaWidgetState createState() => _RecetaWidgetState();
}

class _RecetaWidgetState extends State<RecetaWidget> {
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFFBC54),
      appBar: AppBar(
        backgroundColor: Color(0xFFA07434),
        automaticallyImplyLeading: true,
        title: SelectionArea(
            child: Text(
              'Receta',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 24,
              ),
            )),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                        child: SelectionArea(
                            child: Text(
                              'Pizza de Peperoni',
                              style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFBC54),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                          child: SelectionArea(
                              child: Text(
                                'Receta de Pizza de Peperoni casera Prepárala y disfruta su sabor',
                                textAlign: TextAlign.center,
                                style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 300,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Image.network(
                          'https://www.saborusa.com/wp-content/uploads/2019/10/Animate-a-disfrutar-una-deliciosa-pizza-de-salchicha-Foto-destacada.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 3, 0, 0),
                      child: SelectionArea(
                          child: Text(
                            '4.6',
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFEB7C16),
                              fontSize: 20,
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: RatingBar.builder(
                        onRatingUpdate: (newValue) =>
                            setState(() => ratingBarValue = newValue),
                        itemBuilder: (context, index) => Icon(
                          Icons.star_rounded,
                          color: Color(0xFFEB7C16),
                        ),
                        direction: Axis.horizontal,
                        initialRating: ratingBarValue ??= 3,
                        unratedColor: Color(0xFF6C4E23),
                        itemCount: 5,
                        itemSize: 25,
                        glowColor: Color(0xFFEB7C16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(90, 3, 0, 0),
                      child: SelectionArea(
                          child: Text(
                            '150 reviews',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF6C4E23),
                              fontSize: 17,
                            ),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SelectionArea(
                          child: Text(
                            '2h Dificultad: Media',
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          )),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(90, 0, 0, 0),
                        child: Icon(
                          Icons.star_rounded,
                          color: Color(0xFF6C4E23),
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xFF6C4E23),
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Icon(
                          Icons.download_rounded,
                          color: Color(0xFF6C4E23),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SelectionArea(
                          child: Text(
                            'Ingredientes',
                            style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          )),
                    ],
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.check_box_rounded,
                      ),
                      title: Text(
                        'Ingrediente 1',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                      tileColor: Color(0xFFFFBC54),
                      dense: false,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box_rounded,
                      ),
                      title: Text(
                        'Ingrediente 2',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                      tileColor: Color(0xFFFFBC54),
                      dense: false,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.check_box_rounded,
                      ),
                      title: Text(
                        'Ingrediente 3',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                      tileColor: Color(0xFFFFBC54),
                      dense: false,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SelectionArea(
                          child: Text(
                            'Procedimiento',
                            style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFBC54),
                            ),
                            child: SelectionArea(
                                child: Text(
                                  'Descripción',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                )),
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
    );
  }
}
