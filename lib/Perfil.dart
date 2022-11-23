import 'package:proyectofinal/IniciarSesion2.dart';
import 'package:proyectofinal/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:proyectofinal/Inicio.dart';
import 'package:proyectofinal/Perfil.dart';
import 'package:proyectofinal/MasRecetas.dart';
import 'package:proyectofinal/Receta.dart';


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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const InicioWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const PerfilWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MasRecetasWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const IniciarSesion2Widget())); // use the Navigator, not the BuildContext
                        },
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaWidget())); // use the Navigator, not the BuildContext
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
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RecetaWidget())); // use the Navigator, not the BuildContext
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
                                    Expanded(
                                      child: Image.network(
                                        'https://images.aws.nestle.recipes/original/2020_06_23T12_09_08_mrs_ImageRecipes_142464lrg.jpg',
                                        width: 182,
                                        height: 170,
                                        fit: BoxFit.cover,
                                      ),
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
