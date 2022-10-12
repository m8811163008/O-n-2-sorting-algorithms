import 'package:algo/sort/bubble_sort.dart';
import 'package:algo/sort/swap.dart';

/// Selection sort has a best, worst and average time
/// complexity of O(n2), though, it does perform better
/// than the [bubbleSort]
void selectionSort<E extends Comparable<dynamic>>(List<E> list) {
  /// The outer for loop represents the passes, where `start`
  /// is the index the current pass should begin at.
  /// Since the lowest value is moved to start at the end of
  /// every pass, start increments by one each time.
  for (var start = 0; start < list.length - 1; start++) {
    var lowest = start;

    /// In every pass, you go through the remainder of the
    /// collection to find the element with lowest value.
    for (var next = start + 1; next < list.length; next++) {
      if (list[next].compareTo(list[lowest]) < 0) {
        lowest = next;
      }
    }

    /// If a lower value was found, then swap it with the value at
    /// the start `index`
    if (lowest != start) {
      list.swap(lowest, start);
    }
  }
}

void main() {
  final list = [1, 2, 3, 4, 5];
  print('Original: $list');
  selectionSort(list);
  print('Selection sorted: $list');
}
