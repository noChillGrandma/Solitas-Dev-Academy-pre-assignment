import 'package:citybike_admin/stations_list.dart';
import 'package:citybike_admin/trips_list.dart';
import 'package:flutter/cupertino.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: CupertinoColors.black
                ),
                child: CupertinoButton(
                  child: const Text('Trips',
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                  ), 
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (context) => const TripsList(),
                      ),
                    );
                  }
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: CupertinoColors.black
                ),
                child: CupertinoButton(
                  child: const Text('Stations',
                    style: TextStyle(
                      color: CupertinoColors.white,
                    ),
                  ), 
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (context) => const StationsList(),
                      ),
                    );
                  }
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}