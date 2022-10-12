import 'swap.dart';

/// O(n) if it's already sorted and a worst and average time
/// complexity of O(n2).
void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
  // The outer for loop counts the passes. A single pass bubbles
  // the largest value to the end of the collection. So in the
  // next pass you shorten the list by one with each pass.
  for (var end = list.length - 1; end > 0; end--) {
    var swapped = false;
    // The inner for loop handles the work of a single pass.
    // It moves through the indices, comparing adjacent values and
    // swapping them if the first value is larger than the second.
    for (var current = 0; current < end; current++) {
      final temp1 = list[current].compareTo(list[current + 1]);
      if (list[current].compareTo(list[current + 1]) > 0) {
        list.swap(current, current + 1);
        swapped = true;
      }
    }
    // If no values were swapped during a pass the collection
    // must be sorted and you can exit early.
    if (!swapped) {
      return;
    }
  }
}

void main() {
  final list = [1, 2, 3, 4, 5];
  print('Original: $list');
  bubbleSort(list);
  print('Bubble sorted: $list');
}
