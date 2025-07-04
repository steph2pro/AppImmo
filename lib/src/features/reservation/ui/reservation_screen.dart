// lib/src/features/reservation/ui/reservation_screen.dart

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myschoolapp/src/core/theme/app_size.dart';
import 'package:myschoolapp/src/datasource/models/propriete_model.dart';
import 'package:myschoolapp/src/features/reservation/logic/providers/reservation_provider.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

@RoutePage()
class ReservationScreen extends ConsumerStatefulWidget {
  final ProprieteModel propriete;

  const ReservationScreen({super.key, required this.propriete});

  @override
  ConsumerState<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends ConsumerState<ReservationScreen> {
  DateTime? selectedDate;
  
  @override
  Widget build(BuildContext context) {
    final propriete = widget.propriete;
    final reservationState = ref.watch(reservationProvider);

    return Scaffold(
      appBar: AppBar(
      backgroundColor: context.colorScheme.secondaryContainer.withOpacity(0.1),
        title:  Row(
          children: [
            Text(
                  'Réserver  ',
                  style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.onSurface,fontSize: 20)
                ),
                Expanded(child: 
                Text(
                  propriete.titre,
                  style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.primary,fontSize: 20)
                ),
                )
          ],
        )
        
        ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              propriete.titre,
              style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.onSurface,fontSize: 20)
                
            ),
            gapH8,
            Text(
              propriete.description,
              style:  context.textTheme.bodyLarge?.copyWith(
                    color:context.colorScheme.tertiary.withOpacity(0.6))
              ),
              gapH10,
              Text(
              "${propriete.nbrChambre.toString()} Chambre(s)",
              style:  context.textTheme.bodyLarge?.copyWith(
                    color:context.colorScheme.tertiary.withOpacity(0.6))
              ),
              gapH10,
              Text(
              "${propriete.nbrSalleBain.toString()} Salle(s) de bain",
              style:  context.textTheme.bodyLarge?.copyWith(
                    color:context.colorScheme.tertiary.withOpacity(0.6))
              ),
              gapH10,
              Text(
              "${propriete.nbrCuisine.toString()} Cuisine(s)",
              style:  context.textTheme.bodyLarge?.copyWith(
                    color:context.colorScheme.tertiary.withOpacity(0.6))
              ),
              gapH30,
            Center(
              child: 
            ElevatedButton(
              onPressed: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(const Duration(days: 1)),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (date != null) {
                  setState(() => selectedDate = date);
                }
              },
              child: Text(
                selectedDate == null
                    ? 'Choisir une date de réservation'
                    : 'Date sélectionnée: ${selectedDate!.toLocal()}',
              ),
            ),
            ),
            const Spacer(),
            // SizedBox(
            //   width: double.infinity,
            //   child:
            // ElevatedButton(
            //   onPressed: selectedDate == null
            //       ? null
            //       : () {
            //           ref.read(reservationProvider.notifier).addReservation(
            //                 context: context,
            //                 idPropriete: propriete.id,
            //                 date: selectedDate!,
            //               );
            //         },
            //   child: const Text('Réserver maintenant'),
            // ), 
            // )

SizedBox(
  width: double.infinity,
  child: reservationState.isLoading
      ? const Center(
          child: CircularProgressIndicator(),
        )
      : ElevatedButton(
          onPressed: selectedDate == null
              ? null
              : () {
                  ref.read(reservationProvider.notifier).addReservation(
                        context: context,
                        idPropriete: propriete.id,
                        date: selectedDate!,
                      );
                },
          child: const Text('Réserver maintenant'),
        ),
)

          ],
        ),
      ),
    );
  }
}
