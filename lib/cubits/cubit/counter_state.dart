part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({
    required this.counter,
  });

  factory CounterState.initial() => const CounterState(counter: 0);
  @override
  List<Object> get props => [counter];

  @override
  String toString() => 'CounterStateLog(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) =>
      CounterState(counter: counter ?? this.counter);
}
