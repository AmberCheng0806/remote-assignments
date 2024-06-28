function countAandB(input) {
  let account = 0;
  for (let i = 0; i < input.length; i++) {
    if ("a" == input[i]) {
      account = account + 1;
    } else if ("b" == input[i]) {
      account = account + 1;
    }
  }
  return account;
}

function toNumber(input) {
  for (let i = 0; i < input.length; i++) {
    if ("a" == input[i]) {
      input[i] = 1;
    } else if ("b" == input[i]) {
      input[i] = 2;
    } else if ("c" == input[i]) {
      input[i] = 3;
    } else if ("d" == input[i]) {
      input[i] = 4;
    } else if ("e" == input[i]) {
      input[i] = 5;
    }
  }
  return input;
}

let input1 = ["a", "b", "c", "a", "c", "a", "c"];
console.log(countAandB(input1));
console.log(toNumber(input1));

let input2 = ["e", "d", "c", "d", "e"];
console.log(countAandB(input2));
console.log(toNumber(input2));

// 3-2另解
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
