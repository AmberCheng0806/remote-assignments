//1. callback
function delayedResult(n1, n2, delayTime, callback) {
  setTimeout(() => {
    //所需要的執行的內容，延遲一下
    callback(n1 + n2);
  }, delayTime);
}
delayedResult(4, 5, 3000, function (result) {
  console.log(result);
}); // 9 (4+5) will be shown in the console after 3 seconds
delayedResult(-5, 10, 2000, function (result) {
  console.log(result);
}); // 5 (-5+10) will be shown in the console after 2 seconds

//2. promise
function delayedResultPromise(n1, n2, delayTime) {
  return new Promise((reslove, reject) => {
    setTimeout(() => {
      reslove(n1 + n2);
    }, delayTime);
  });
}
delayedResultPromise(4, 5, 3000).then(console.log);
// 9 (4+5) will be shown in the console after 3 seconds

//3. async / await
async function main() {
  const data = await delayedResultPromise(4, 5, 3000);
  console.log(data);
}
main();
