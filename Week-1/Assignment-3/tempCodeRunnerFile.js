function toNum(input) {
  for (let i = 0; i < input.length; i++) {
    // console.log(input[i].charCodeAt(0) - 96);
    input[i] = input[i].charCodeAt(0) - 96;
  }
  return input;
}

let input1 = ["a", "b", "c", "a", "c", "a", "c"];
let input2 = ["e", "d", "c", "d", "e"];
// toNum(input2);
console.log(toNum(input1));
console.log(toNum(input2));
