/* 
* MARK: Solution #1
* Rotate the entire array. Then, for the resulting array, 
* we rotate a part of the array (from the first to the K element). 
* At the end, we rotate the rest of the array (from K to the last element)
*
* K - count rotate
* N - count elements in array
*
* ---------------------------------------------------
* Time: O(N)
* Space: O(1)
* ---------------------------------------------------
*/

func circularRotateWithReverse(arrayForRotate array: inout [Int], _ countRotate: Int) -> Void {
    func reverseArray(arrayForReverse array: inout [Int], indexStart: Int, indexFin: Int) -> Void {
        guard indexStart > -1 && indexStart < array.count &&
            indexFin > -1 && indexFin < array.count  else  {
            return
        }
        
        var startIndex = indexStart
        var finIndex = indexFin

        while startIndex < finIndex {
            let temp = array[startIndex]
            array[startIndex] = array[finIndex]
            array[finIndex] = temp
            finIndex -= 1
            startIndex += 1
        }
    }
    

    guard array.count > 1 && countRotate > 0 else {
        return
    }

    reverseArray(
        arrayForReverse: &array,
        indexStart: 0,
        indexFin: array.count - 1
    )
    
    reverseArray(
        arrayForReverse: &array,
        indexStart: 0,
        indexFin: countRotate % array.count - 1
    )
    
    reverseArray(
        arrayForReverse: &array,
        indexStart: countRotate % array.count,
        indexFin: array.count - 1
    )
}


/* 
* MARK: Solution #2
* Shift the array to the right by one element. 
* We replace the first element of the resulting array 
* with the last element of the original array.
*
* K - count rotate
* N - count elements in array
*
* ---------------------------------------------------
* Time: O(K * N)
* Space: O(1)
* ---------------------------------------------------
*/

func circularRotateArray(arrayForRotate array: inout [Int], _ countRotate: Int) -> Void {
    guard array.count > 1 && countRotate > 0 else {
        return
    }

    for _ in 1 ... countRotate {
        let lastValue = array[array.count - 1]

        for indexElement in stride(from: array.count - 1, to: 0, by: -1) {
            array[indexElement] = array[indexElement - 1]
        }
        array[0] = lastValue
    }
}


/* 
* MARK: Solution #3
* We create a new array, 
* the elements of which immediately take up the necessary space.
*
* K - count rotate
* N - count elements in array
*
* Algorithm:
* newArray[indexNewArray] = oldArray[indexOldArray], where
* indexNewArray = (indexOldArray + K) % N 
*
* ---------------------------------------------------
* Time: O(N)
* Space: O(N)
* ---------------------------------------------------
*/

func circularRotateWithExtraArray(arrayForRotate array: inout [Int], _ countRotate: Int) -> Void {
    guard array.count > 1 && countRotate > 0 else {
        return
    }

    var newArray: [Int] = [Int](
        repeating: 0, 
        count: array.count
    )

    for index in 0 ..< array.count {
        newArray[(index + countRotate) % array.count] = array[index]
    }
    
    array = newArray
}