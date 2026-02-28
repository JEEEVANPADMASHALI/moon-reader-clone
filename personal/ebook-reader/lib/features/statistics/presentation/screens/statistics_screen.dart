import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/app_database.dart';

final readingStatsProvider = FutureProvider<List<_DailyStats>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  final sessions = await db.statsDao.getRecentSessions(30);

  final map = <String, _DailyStats>{};
  for (final s in sessions) {
    final key =
        '${s.date.year}-${s.date.month.toString().padLeft(2, '0')}-${s.date.day.toString().padLeft(2, '0')}';
    final durationMin = s.sessionEnd != null
        ? s.sessionEnd!.difference(s.sessionStart).inMinutes
        : 0;
    final existing = map[key];
    if (existing == null) {
      map[key] = _DailyStats(
        date: key,
        minutes: durationMin,
        pagesRead: s.pagesRead,
      );
    } else {
      map[key] = _DailyStats(
        date: key,
        minutes: existing.minutes + durationMin,
        pagesRead: existing.pagesRead + s.pagesRead,
      );
    }
  }

  return map.values.toList()..sort((a, b) => a.date.compareTo(b.date));
});

class _DailyStats {
  final String date;
  final int minutes;
  final int pagesRead;
  _DailyStats(
      {required this.date, required this.minutes, required this.pagesRead});
}

class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(readingStatsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Reading Statistics')),
      body: statsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (stats) {
          if (stats.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bar_chart, size: 64),
                  SizedBox(height: 12),
                  Text('No reading data yet'),
                  Text('Start reading to track your progress'),
                ],
              ),
            );
          }

          final totalMinutes =
              stats.fold<int>(0, (sum, s) => sum + s.minutes);
          final totalPages =
              stats.fold<int>(0, (sum, s) => sum + s.pagesRead);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SummaryCards(
                    totalMinutes: totalMinutes, totalPages: totalPages),
                const SizedBox(height: 24),
                Text('Reading Time (last 30 days)',
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                SizedBox(
                  height: 200,
                  child: BarChart(
                    BarChartData(
                      barGroups: stats.asMap().entries.map((e) {
                        return BarChartGroupData(
                          x: e.key,
                          barRods: [
                            BarChartRodData(
                              toY: e.value.minutes.toDouble(),
                              color:
                                  Theme.of(context).colorScheme.primary,
                              width: 8,
                            ),
                          ],
                        );
                      }).toList(),
                      titlesData: const FlTitlesData(show: false),
                      gridData: const FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text('Pages Read (last 30 days)',
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                SizedBox(
                  height: 200,
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: stats.asMap().entries.map((e) {
                            return FlSpot(
                                e.key.toDouble(),
                                e.value.pagesRead.toDouble());
                          }).toList(),
                          isCurved: true,
                          color: Theme.of(context).colorScheme.secondary,
                          barWidth: 2,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            color: Color.fromARGB(
                              25,
                              Theme.of(context).colorScheme.secondary.r.round(),
                              Theme.of(context).colorScheme.secondary.g.round(),
                              Theme.of(context).colorScheme.secondary.b.round(),
                            ),
                          ),
                        ),
                      ],
                      titlesData: const FlTitlesData(show: false),
                      gridData: const FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SummaryCards extends StatelessWidget {
  final int totalMinutes;
  final int totalPages;
  const _SummaryCards(
      {required this.totalMinutes, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    final hours = totalMinutes ~/ 60;
    final mins = totalMinutes % 60;
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Icon(Icons.access_time, size: 32),
                  const SizedBox(height: 8),
                  Text('${hours}h ${mins}m',
                      style: Theme.of(context).textTheme.titleLarge),
                  const Text('Total reading time'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Icon(Icons.menu_book, size: 32),
                  const SizedBox(height: 8),
                  Text('$totalPages',
                      style: Theme.of(context).textTheme.titleLarge),
                  const Text('Pages read'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
