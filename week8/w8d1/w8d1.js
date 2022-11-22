//function mysteryScoping1() {
//    var x = 'out of block';
//    if (true) {
//      var x = 'in block';  
//      console.log(x);
//    }
//    console.log(x);
//}

//function mysteryScoping2() {
//    const x = 'out of block';
//    if (true) {
//      const x = 'in block';  
//      console.log(x);
//    }
//    console.log(x);
//}

//  
//function mysteryScoping3() {
//    const x = 'out of block';
//    if (true) {
//      var x = 'in block';  
//      console.log(x);
//    }
//    console.log(x);
//}


//function mysteryScoping4() {
//    let x = 'out of block';
//    if (true) {
//      let x = 'in block';  
//      console.log(x);
//    }
//    console.log(x);
//}

//  
//function mysteryScoping5() {
//    let x = 'out of block';
//    if (true) {
//      let x = 'in block';  
//      console.log(x);
//    }
//    let x = 'out of block again';
//    console.log(x);
//}
//
function madLib(str1, str2, str3) {
    return `We shall ${str1.toUpperCase()} the ${str2.toUpperCase()} ${str3.toUpperCase()}.`
}

function isSubstring(phrase, sub) {
    return phrase.includes(sub);
}

function fizzBuzz(array) { 
    const fizzBuzzArr = [];
    array.forEach(el => {
        if ((el % 3 === 0 ) || (el % 5 === 0 )) {
            fizzBuzzArr.push(el);
        }
    });
    return fizzBuzzArr
}


function isPrime(num) {
    if (num < 2) { return false; }

    for (let i = 2; i < num; i++) {
        if (num % i === 0) { 
        return false;
        }
    }
    return true
}


function sumOfNPrimes(n) {
    let sum = 0; 
    let primes = 0 

    for (let i = 2; i <= n; i++) {
        if (isPrime(i)) {
            sum += i;
        }
    }
   return sum
}
//mysteryScoping5();

console.log(madLib('make', 'best', 'guac')); // "We shall MAKE the BEST GUAC."


console.log(isSubstring("time to program", "time"));
//true
console.log(isSubstring("Jump for joy", "joys"));
//false
console.log(isPrime(2));
//true
console.log(isPrime(10));
//false

console.log(isPrime(15485863));
//true
console.log(isPrime(3548563));
//false
console.log(sumOfNPrimes(0));
//0
console.log(sumOfNPrimes(1));
//2
console.log(sumOfNPrimes(4));
//17