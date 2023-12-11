import 'package:app/features/error.dart';
import 'package:app/features/loading.dart';
import 'package:app/features/pet/domain/pet_collection.dart';
import 'package:app/features/pet/domain/pet_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../all_data_provider.dart';
import '../../pedometer/presentation/pedometer_circles.dart';

class PedometerView extends ConsumerWidget {
  const PedometerView({super.key});

  static const routeName = '/pedometer';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
        data: (allData) => _build(
            context: context,
            currentUserID: allData.currentUserID),
        loading: () => const PedLoading(),
        error: (error, st) => PedError(error.toString(), st.toString()));
  }

  Widget _build(
      {required BuildContext context,
      required String currentUserID,}) {

    
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    child: Text(
                      currentPet.petName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Image.asset('assets/images/sad_dog.png', width: 300),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Image.asset('assets/images/healthbar_empty.png', width: 150),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            '231', //'$calories',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Center(
                          child: Text(
                            'Calories',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 30),
                    ProgressCircle(
                        'Steps',
                        .5,
                        1543, //currentPet.steps,
                        0,
                        7000 /*currentPet.currSteps, currentPet.stepGoal*/),
                    const SizedBox(width: 30),
                    const Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            '6', //'$miles',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Center(
                          child: Text(
                            'Miles',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 30),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
