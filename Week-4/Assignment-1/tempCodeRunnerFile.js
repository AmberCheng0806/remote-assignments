const p = new Promise((resolve) => {
    if (true) {
      resolve(`直接執行 Promise`)
    }
  })
  
  function PromiseFn(String) {
    return new Promise((resolve, reject) => {
      setTimeout(function () {
        if (String.length >= 5) {
          resolve(`Promise 成功， ${String} 共 ${String.length} 個字 `)
        } else {
          reject('Promise 失敗')
        }
      }, 2000);
    });
  }
  PromiseFn('Ryder')
    .then((res) => {
      console.log(res) // Promise 成功， Ryder 共 5 個字
      return PromiseFn('youtube') // Promise 鏈式寫法，可以不斷寫 Promise 下去。
    }).then((res) => {
      console.log(res)  // Promise 成功， youtube 共 7 個字 
      return p
    }).then((res) => {
      console.log(res) // 直接執行 Promise
    })