// import 'package:flutter/material.dart';
// import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

// class ResultatScreen extends StatelessWidget {
//   final List<SubjectResult> results = [
//     SubjectResult(subject: "Mathématiques", grade: 18.5, mention: "Très bien"),
//     SubjectResult(subject: "Français", grade: 15.0, mention: "Bien"),
//     SubjectResult(subject: "Anglais", grade: 14.0, mention: "Asses bien"),
//     SubjectResult(subject: "Sciences", grade: 17.0, mention: "Très bien"),
//     SubjectResult(subject: "Histoire-Géo", grade: 13.5, mention: "Assez bien"),
//     SubjectResult(subject: "Sciences", grade: 17.0, mention: "Très bien"),
//     SubjectResult(subject: "Histoire-Géo", grade: 13.5, mention: "Assez bien"),
//   ];

//   ResultatScreen({super.key});

//   double get average =>
//       results.map((e) => e.grade).reduce((a, b) => a + b) / results.length;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         title:  Text(
//           "Résultats Scolaires",
//           style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.onPrimary,fontSize: 22),
//           ),
//         centerTitle: true,
//         backgroundColor: context.colorScheme.primary,
//         foregroundColor: context.colorScheme.onPrimary,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 16),
//           Card(
//             margin: const EdgeInsets.symmetric(horizontal: 16),
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text("Moyenne Générale", style: TextStyle(fontSize: 18)),
//                   Text(
//                     "${average.toStringAsFixed(2)} / 20",
//                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView.separated(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               itemCount: results.length,
//               separatorBuilder: (_, __) => const SizedBox(height: 12),
//               itemBuilder: (context, index) {
//                 final r = results[index];
//                 return Card(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                   elevation: 2,
//                   child: ListTile(
//                     contentPadding: const EdgeInsets.all(16),
//                     title: Text(r.subject, style: theme.textTheme.titleMedium),
//                     subtitle: Text("Mention : ${r.mention}"),
//                     trailing: Text(
//                       "${r.grade}/20",
//                       style: theme.textTheme.titleLarge?.copyWith(
//                         color: r.grade >= 10 ? Colors.green : Colors.red,
//                         fontWeight: FontWeight.bold,fontSize: 24
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SubjectResult {
//   final String subject;
//   final double grade;
//   final String mention;

//   SubjectResult({
//     required this.subject,
//     required this.grade,
//     required this.mention,
//   });
// }

import 'package:flutter/material.dart';
import 'package:myschoolapp/src/shared/extensions/context_extensions.dart';

class ResultatScreen extends StatelessWidget {
  final List<List<SubjectResult>> trimestres = [
    [
      SubjectResult(subject: "Maths", grade: 17.0, mention: "Très bien"),
      SubjectResult(subject: "Français", grade: 15.5, mention: "Bien"),
      SubjectResult(subject: "Anglais", grade: 13.0, mention: "Assez bien"),
    SubjectResult(subject: "Sciences", grade: 17.0, mention: "Très bien"),
    SubjectResult(subject: "Histoire-Géo", grade: 13.5, mention: "Assez bien"),
    ],
    [
      SubjectResult(subject: "Maths", grade: 18.0, mention: "Excellent"),
      SubjectResult(subject: "Français", grade: 14.5, mention: "Bien"),
      SubjectResult(subject: "Anglais", grade: 11.0, mention: "Passable"),
    SubjectResult(subject: "Sciences", grade: 17.0, mention: "Très bien"),
    SubjectResult(subject: "Histoire-Géo", grade: 13.5, mention: "Assez bien"),
    ],
    [
      SubjectResult(subject: "Maths", grade: 16.0, mention: "Bien"),
      SubjectResult(subject: "Français", grade: 13.0, mention: "Assez bien"),
      SubjectResult(subject: "Anglais", grade: 12.0, mention: "Passable"),
    SubjectResult(subject: "Sciences", grade: 17.0, mention: "Très bien"),
    SubjectResult(subject: "Histoire-Géo", grade: 13.5, mention: "Assez bien"),
    ],
  ];

  ResultatScreen({super.key});

  double _getAverage(List<SubjectResult> results) {
    return results.map((e) => e.grade).reduce((a, b) => a + b) / results.length;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
       appBar: AppBar(
        title:  Text(
          "Résultats Scolaires",
          style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.onPrimary,fontSize: 22),
          ),
        centerTitle: true,
        backgroundColor: context.colorScheme.primary,
        foregroundColor: context.colorScheme.onPrimary,

          bottom:  TabBar(
            tabs: [
              Tab(text: "Trimestre 1"),
              Tab(text: "Trimestre 2"),
              Tab(text: "Trimestre 3"),
            ],
            indicatorColor: Colors.white,
            labelColor: context.colorScheme.onPrimary,
          ),
        ),
        body: TabBarView(
          children: List.generate(3, (index) {
            final results = trimestres[index];
            final average = _getAverage(results);
            return Column(
              children: [
                const SizedBox(height: 16),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Moyenne Générale", style: TextStyle(fontSize: 18)),
                        Text(
                          "${average.toStringAsFixed(2)} / 20",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    itemCount: results.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, i) {
                      final r = results[i];
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          title: Text(r.subject, style: context.textTheme.titleMedium),
                          subtitle: Text("Mention : ${r.mention}"),
                          trailing: Text(
                            "${r.grade}/20",
                            style:  context.textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: r.grade >= 10 ? Colors.green : Colors.red,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class SubjectResult {
  final String subject;
  final double grade;
  final String mention;

  SubjectResult({
    required this.subject,
    required this.grade,
    required this.mention,
  });
}
