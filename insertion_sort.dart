import 'package:algo/sort/swap.dart';

/// [insertionSort] is one of the fastest sorting algorithm if
/// data is already sorted.
/// Insertion sort is a stable sort algorithm.It means if you
/// have deck of card with 5 of diamond and 5 of club in front of
/// it, it sort the 5 of diamond still behind of 5 of
/// diamond.
void insertionSort<E extends Comparable<dynamic>>(List<E> list) {
  /// Insertion sort requires you to iterate from left to
  /// right once, which is the job of this outer for loop.
  /// At the beginning of the loop, current is the index of the
  /// element you want to sort in this pass.
  for (var current = 1; current < list.length; current++) {
    /// You run backward from the `current` index so ou can shift
    /// left as needed.
    for (var shifting = current; shifting > 0; shifting--) {
      /// Keep shifting the element left as long as necessary.
      /// As soon as the element is in position, break the inner
      /// loop and start with the next element.
      if (list[shifting].compareTo(list[shifting - 1]) < 0) {
        list.swap(shifting, shifting - 1);
      } else {
        break;
      }
    }
  }
}

void main() {
  var list = [9, 4, 10, 3];
  print('Original: $list');
  insertionSort(list);
  print('Insertion sorted: $list');
}
