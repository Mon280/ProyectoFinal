import 'package:proyectofinal/flutter_flow_theme.dart';
import 'package:proyectofinal/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key? key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
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
                          if (scaffoldKey.currentState!.isDrawerOpen ||
                              scaffoldKey.currentState!.isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
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
                        'https://picsum.photos/seed/479/600',
                        fit: BoxFit.contain,
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
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).subtitle1,
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
                      ListTile(
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
                      ListTile(
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
                      ListTile(
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
                      ListTile(
                        leading: Icon(
                          Icons.login_sharp,
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
              'Hells Kitchen',
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Image.network(
                      'https://www.clara.es/medio/2021/12/16/que-comer-hoy-ideas_21beeb02_1200x630.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: SelectionArea(
                        child: Text(
                          'Pastas',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        )),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
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
                                    'https://www.mexicoenmicocina.com/wp-content/uploads/2013/11/Enchiladas-rojas-2.jpg',
                                    width: 190,
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
                                          'Enchiladas',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://www.saborusa.com/wp-content/uploads/2019/10/Animate-a-disfrutar-una-deliciosa-pizza-de-salchicha-Foto-destacada.png',
                                    width: 190,
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
                                          'Pizza',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://www.cocinacaserayfacil.net/wp-content/uploads/2020/04/Recetas-de-comidas-para-ni%C3%B1os.jpg',
                                    width: 190,
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
                                          'Pasta',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://images.ctfassets.net/n7hs0hadu6ro/2kXdxxIdkuOGj872zosdw8/d5bb142e2182bebfcfc1d5dd1afd8c2a/comida-tipica-de-puebla-una-aventura-de-sabor.jpg?w=1257&h=835&fl=progressive&q=50&fm=jpg',
                                    width: 190,
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
                                          'Chile relleno',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: SelectionArea(
                        child: Text(
                          'Platillos fáciles',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        )),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
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
                                    'https://cnnespanol.cnn.com/wp-content/uploads/2015/06/150611062152-pizza-hut.jpg?quality=100&strip=info&w=460&h=260&crop=1',
                                    width: 190,
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
                                          'Pizza',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxm_IZ97KW0L74eMxnLQd_BjZKANwYfNvtqQ&usqp=CAU',
                                    width: 190,
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
                                          'Sopes',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://www.cardamomo.news/__export/1649105595001/sites/debate/img/2021/03/29/14_recetas_fxciles_y_econxmicas_que_puedes_hacer_para_la_comida_crop1617051957684.jpeg_1187729725.jpeg',
                                    width: 190,
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
                                          'Albondigas',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://saposyprincesas.elmundo.es/wp-content/uploads/2017/01/comida-india-langostinos-tandoori.jpg',
                                    width: 190,
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
                                          'Camarones',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: SelectionArea(
                        child: Text(
                          'Platillos más populares',
                          style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        )),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
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
                                    'https://www.cardamomo.news/__export/1651944484203/sites/debate/img/2022/05/07/comida_corrida.png_242310155.png',
                                    width: 190,
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
                                          'Arroz con mole',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://statics-cuidateplus.marca.com/cms/styles/ratio_16_9/azblob/hamburguesas.jpg.webp?itok=kFNL-5BX',
                                    width: 190,
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
                                          'Hamburguesa',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://www.soynomada.news/__export/1612172574379/sites/debate/img/2021/02/01/comida_txpica_de_guadalajara__torta_ahogada_crop1612172540940.jpeg_1902800913.jpeg',
                                    width: 190,
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
                                          'Torta ahogada',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                    InkWell(
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
                                    'https://media.gq.com.mx/photos/5fd14d41df344f5681dd7813/16:9/w_2560%2Cc_limit/GettyImages-1255074395.jpg',
                                    width: 190,
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
                                          'Pasta con queso',
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
                                          '4.6',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 7, 0, 0),
                                    child: Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFA07434),
                                      size: 24,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 7, 0, 0),
                                    child: Icon(
                                      Icons.favorite,
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
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xFFFFBC54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
