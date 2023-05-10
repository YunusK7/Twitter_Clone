import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tabbar_view.dart';

class home extends StatefulWidget {
  home(this.controller);

  final ScrollController controller;
  //const home({super.key});

  @override
 _homeState createState() => _homeState();
}

class _homeState extends State<home> {
 
  ScrollController scrollController=ScrollController();
  String _randomImage = "https://picsum.photos/200/300";
  String dummyTweet="Up maids me an ample stood given. Certainty say suffering his him collected intention promotion. Hill sold ham men made lose case. Views abode law heard jokes too. Was are delightful solicitude discovered collecting man day. Resolving neglected sir tolerably but existence conveying for. Day his put off unaffected literature partiality inhabiting.";
  bool isHeaderClose=false;
  double lastOffset =0;


  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _fabButton,
      body: _listview,

    );
  }

  //Widget get _expandedListView => Expanded(child: _listview,);

  Widget get _listview => ListView.builder(
    itemCount: 10,
    controller: widget.controller,
    itemBuilder:(context,index){
    return _listViewCard;
    },
   );

   Widget get _fabButton => FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.adb),
    );

Widget get _listViewCard => Card(
  child: ListTile(
    leading: CircleAvatar( backgroundImage: NetworkImage(_randomImage), ),
    title: Wrap(
      direction: Axis.horizontal,
      runSpacing: 5,
      children:<Widget> [
        _listCardTitle("hello"),
        Text(dummyTweet),
        _plsceHolderField,
        _footerButtonRow,
       ],
    ),
  ),
);


Widget _listCardTitle(String text) => Text(
  text,
  style: titleTextStyle,
);

Widget get _plsceHolderField => Container(
    height: 100,
    child: Placeholder(),
);

Widget get _footerButtonRow => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            _iconLabelButton,
            _iconLabelButton,
            _iconLabelButton,
            _iconLabelButton,

          ],
        );

Widget _iconLabel(String text) => Wrap(
  spacing: 5,
  children:<Widget> [ 
    Icon(
      Icons.comment,
      color: CupertinoColors.inactiveGray,
      ),
      Text(text),
  ],
);
Widget get _iconLabelButton => InkWell(
  child: _iconLabel("1"),
  onTap: () {},
);

}