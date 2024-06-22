function countAandB(input) {
    let account = 0
    for(let i=0;i<input.length;i++){
    if ("a" == input[i]){
       account = account+1;
    }else if("b" == input[i]){
       account = account+1;
    }
    }
    console.log(account);
}

function toNumber(input) {
    let input2[6];
    for(let i=0;i<input.length;i++){
        if ("a" == input[i]){
            input2[i] = 1;
        }else if("b" == input[i]){
            input2[i] = 2;
        }else if("c" == input[i]){
            input2[i] = 3;  
        }else if("d" == input[i]){
            input2[i] = 4;
        }else if("e" == input[i]){
            input2[i] = 5;
        }
        }
        console.log(input2[i]);
    }

let input = ['a', 'b', 'c', 'a', 'c', 'a', 'c'];
console.log(countAandB(input));
console.log(toNumber(input));