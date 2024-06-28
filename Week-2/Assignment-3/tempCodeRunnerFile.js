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
