import 'package:visitbj/export.dart';
class FavorsScreen extends StatefulWidget {
  const FavorsScreen({super.key});

  @override
  State<FavorsScreen> createState() => _FavorsScreenState();
}

class _FavorsScreenState extends State<FavorsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Favors")),

    );
  }
}
