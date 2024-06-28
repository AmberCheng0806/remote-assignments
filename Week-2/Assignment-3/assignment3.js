function count(input) {
  let obj = {};
  for (let i = 0; i < input.length; i++) {
    if (input[i] in obj) {
      obj[input[i]]++;
    } else {
      obj[input[i]] = 1;
    }
  }
  return obj;
}
let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1));

function groupByKey(input) {
  let obj2 = {};
  for (let i = 0; i < input.length; i++) {
    if (input[i].key in obj2) {
      obj2[input[i].key] += input[i].value;
    } else {
      obj2[input[i].key] = input[i].value;
    }
  }
  return obj2;
}

let input2 = [
  { key: "a", value: 3 },
  { key: "b", value: 1 },
  { key: "c", value: 2 },
  { key: "a", value: 3 },
  { key: "c", value: 5 },
];
console.log(groupByKey(input2));
