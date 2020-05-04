import'package:flutter/material.dart';
import '../../modelos/receita.dart';

class Detalhes extends StatelessWidget {

  final Receita receita;

  Detalhes({ Key key, @required this.receita}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes(){
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _construirImagemDetalhes(receita.foto),
          _construirTituloDetalhes(receita.titulo),
          _construirLinhaIconesdetalhes('${receita.porcoes} porções', receita.tempoPreparo),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextoDetalhes(receita.ingredientes),
          _construirSubtituloDetalhes('Modo de Preparo'),
          _construirTextoDetalhes(receita.modoPreparo)
        ]),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirImagemDetalhes(imagem) {
    return Image.asset(imagem);
  }

  Widget _construirTituloDetalhes(titulo) {
    return Center(
      child: Text(titulo, style: TextStyle(
      color: Colors.deepPurpleAccent, fontSize: 30
      ),
    ));
  }
  Widget _construirLinhaIconesdetalhes(rendimento, tempo_preparo) {
    return Row(
      children: <Widget>[
        _construirColunaIconeDetalhes(Icons.restaurant, rendimento),
        _construirColunaIconeDetalhes(Icons.timer, tempo_preparo)
      ]
    );
  }

  Widget _construirColunaIconeDetalhes(icone, texto){
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(icone, color: Colors.deepPurpleAccent),
          Text(texto, style: TextStyle(
              color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
      ],
    ));
  }

  Widget _construirSubtituloDetalhes(subtitulo){
    return Center(child:Text(subtitulo, style: TextStyle(
      fontSize: 20
    )),
    );
  }

  Widget _construirTextoDetalhes(texto){
    return Container(
        padding:EdgeInsets.all(16),
        child: Text(texto)) ;
  }

  Widget _construirAppBar(){
    return AppBar(title: Text('Cozinhando em Casa'));
  }
}