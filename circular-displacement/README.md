# Circular-displacement
## Описание
Реализованы 3 функции для циклического сдвига (поворота) массива
На заданное количество элементов.

## Описание функций
### circularRotateWithReverse
Time Complexity: O(N)
Space Complexity: O(1)

Функция circularRotateWithReverse реализует циклический сдвиг массива путём переворота различных частей массива.

Алгоритм:
Пусть K - заданное число сдвигов; N - длина массива.

Необходимо:
1. Перевернуть массив начиная с первого (0й индекс) по последний элемент (N - 1 индекс).
2. Перевернуть массив начиная с первого (0й индекс) по Kй элемент (К - 1 индекс).
3. Перевернуть массив начиная с К + 1 элемента (K индекс) по последний элемент (N - 1 индекс).

<img width="500" alt="rotate1" src="https://user-images.githubusercontent.com/48867712/145580043-57e9c102-c4ee-4b5f-9bbf-19f0df63556d.png">


### circularRotateWithExtraArray
Time Complexity: O(N)
Space Complexity: O(N)

Функция circularRotateWithExtraArray реализует циклический сдвиг массива путём создания нового массива и добавление элементов в необходимые ячейки.

Алгоритм:
Пусть K - заданное число сдвигов; N - длина массива.

Необходимо:
1. Создать новый массив (newArray)
2. newArray[(index + K) % N] = oldArray[index] (где oldArray - первоначальный масиив)
3. oldArray = newArray

<img width="500" alt="rotate1" src="https://user-images.githubusercontent.com/48867712/145582133-6222bb9a-3462-46dd-8057-14e7a08a0e3e.png">

