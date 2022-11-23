import 'package:proyectofinal/flutter_flow_theme.dart';
import 'package:proyectofinal/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key? key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFFBC54),
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFFFBC54),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/810/600',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                            'Invitado',
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Inicio'),
                            ),
                          );
                          navigator.pop('Inicio'); // use the Navigator, not the BuildContext
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.home_rounded,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Inicio',
                            style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Perfil'),
                            ),
                          );
                          navigator.pop('Perfil'); // use the Navigator, not the BuildContext
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Perfil',
                            style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('MasRecetas'),
                            ),
                          );
                          navigator.pop('MasRecetas'); // use the Navigator, not the BuildContext
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.receipt_long_sharp,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Agregar receta',
                            style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.login,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Cerrar sesión',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFA07434),
        automaticallyImplyLeading: true,
        title: SelectionArea(
            child: Text(
              'Perfil',
              style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
            )),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: Icon(
              Icons.search_outlined,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 24,
            ),
          ),
        ],
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/555/600',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                      'Cinthia Vázquez',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 17,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: SelectionArea(
                                      child: Text(
                                        '4.6',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFEB7C16),
                                          fontSize: 17,
                                        ),
                                      )),
                                ),
                                RatingBar.builder(
                                  onRatingUpdate: (newValue) =>
                                      setState(() => ratingBarValue = newValue),
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFFEB7C16),
                                  ),
                                  direction: Axis.horizontal,
                                  initialRating: ratingBarValue ??= 3,
                                  unratedColor: Color(0xFFA07434),
                                  itemCount: 5,
                                  itemSize: 23,
                                  glowColor: Color(0xFFEB7C16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBC54),
                      border: Border.all(
                        color: Color(0xFFDB9F47),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: SelectionArea(
                          child: Text(
                            'MIS RECETAS',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          )),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Receta'),
                            ),
                          );
                          navigator.pop('Receta'); // use the Navigator, not the BuildContext
                        },
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFBC54),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      'https://images.ctfassets.net/n7hs0hadu6ro/2o9qNfhsKEU6woY7zQpP8E/a2688bde4c2addd1a08ca74f452fc5c6/comida-tipica-de-chihuahua-la-delicia-del-norte.jpg?w=1253&h=836&fl=progressive&q=50&fm=jpg',
                                      width: 182,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            'Burritos',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            '4.4',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEB7C16),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFEB7C16),
                                        size: 20,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 5, 0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                              'Editar',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA07434),
                                                fontSize: 17,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Icon(
                                        Icons.restore_from_trash,
                                        color: Color(0xFFA07434),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Receta'),
                            ),
                          );
                          navigator.pop('Receta'); // use the Navigator, not the BuildContext
                        },
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFBC54),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      'https://rhpositivo.mx/media/k2/items/cache/7779d18a61414ff94a179235d0ab0ca4_XL.jpg',
                                      width: 182,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            'Tacos',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            '4.4',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEB7C16),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFEB7C16),
                                        size: 20,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 5, 0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                              'Editar',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA07434),
                                                fontSize: 17,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Icon(
                                        Icons.restore_from_trash,
                                        color: Color(0xFFA07434),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Receta'),
                            ),
                          );
                          navigator.pop('Receta'); // use the Navigator, not the BuildContext
                        },
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFBC54),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      'https://www.cuerpomente.com/medio/2022/04/27/recetas-para-tupper_0f447d26_1200x1200.jpg',
                                      width: 182,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            'Pocket',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            '4.4',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEB7C16),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFEB7C16),
                                        size: 20,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 5, 0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                              'Editar',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA07434),
                                                fontSize: 17,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Icon(
                                        Icons.restore_from_trash,
                                        color: Color(0xFFA07434),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Receta'),
                            ),
                          );
                          navigator.pop('Receta'); // use the Navigator, not the BuildContext
                        },
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFBC54),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      'https://s1.eestatic.com/2015/05/11/cocinillas/cocinillas_32506750_116175093_1706x960.jpg',
                                      width: 182,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            'Sushi',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            '4.4',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEB7C16),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFEB7C16),
                                        size: 20,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 5, 0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                              'Editar',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA07434),
                                                fontSize: 17,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Icon(
                                        Icons.restore_from_trash,
                                        color: Color(0xFFA07434),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Receta'),
                            ),
                          );
                          navigator.pop('Receta'); // use the Navigator, not the BuildContext
                        },
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFBC54),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      'https://www.cocinacaserayfacil.net/wp-content/uploads/2019/11/Comida-americana.jpg',
                                      width: 182,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            'Alitas',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            '4.4',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEB7C16),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFEB7C16),
                                        size: 20,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 5, 0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                              'Editar',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA07434),
                                                fontSize: 17,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Icon(
                                        Icons.restore_from_trash,
                                        color: Color(0xFFA07434),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final navigator = Navigator.of(context); // store the Navigator
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text('Receta'),
                            ),
                          );
                          navigator.pop('Receta'); // use the Navigator, not the BuildContext
                        },
                        child: Container(
                          width: 190,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFBC54),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      'data:image/jpeg;base64,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',
                                      width: 182,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            'Pan de limón',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                            '4.4',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFEB7C16),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 8, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFEB7C16),
                                        size: 20,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 5, 0, 0),
                                        child: SelectionArea(
                                            child: Text(
                                              'Editar',
                                              style: FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA07434),
                                                fontSize: 17,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 7, 0, 0),
                                      child: Icon(
                                        Icons.restore_from_trash,
                                        color: Color(0xFFA07434),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
