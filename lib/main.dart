import 'package:apiuserrandom/Providers/UserRandomProvider.dart';
import 'package:apiuserrandom/Screens/UserRandomScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>UserRandomProvider())
    ],child: MaterialApp(home: UserRandomScreen(),),);
        
    
  }
}