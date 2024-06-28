function max(numbers) {
  let maxNum = numbers[0];
  for (i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxNum) {
      maxNum = numbers[i];
    }
  }
  return maxNum;
}

function findPosition(number, target) {
  for (i = 0; i < number.length; i++) {
    if (target === number[i]) {
      return i;
    }
  }
  return -1;
}

console.log(max([1, 2, 4, 5]));
console.log(max([5, 2, 7, 1, 6]));
console.log(findPosition([5, 2, 7, 1, 6], 5));
console.log(findPosition([5, 2, 7, 1, 6], 7));
console.log(findPosition([5, 2, 7, 7, 7, 1, 6], 7));
console.log(findPosition([5, 2, 7, 1, 6], 8));
