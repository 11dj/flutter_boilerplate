import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import './core/models/counter.dart';
import './core/models/user.dart';


List<SingleChildWidget> providers = [
  ...providerModels
];

List<SingleChildWidget> providerModels = [
  ChangeNotifierProvider<Counter>(create: (context) => Counter(counter: 4)),
  ChangeNotifierProvider<User>(create: (context) => User()),
];