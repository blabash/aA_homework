function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping4(){
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x)
    }
    let x = 'out of block again';
    console.log(x);
}

function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}

function isSubstring(searchString, subString) {
    //if subString is longer than searchString, it's not a match.

    if (subString.length > searchString.length) {
        return false;
    }

    for(let searchStringIdx = 0; searchStringIdx <= searchString.length - subString.length ; ++searchStringIdx) {
        let match = true;
        for(let subStringIdx = 0; subStringIdx < subString.length; ++subStringIdx) {
            let subStringChar = subString[subStringIdx];
            let searchStringChar = searchString[searchStringIdx + subStringIdx];
            if (subStringChar !== searchStringChar) {
                match = false;
                break;
            }
        }
        if (match) {
            return true; //matched all characters in the substring
        }
    }

    return false;
}

// function charactersMatch(stringA, stringB, indexA, indexB) {
//     return stringA[indexA] === stringB[indexB];
// // }

// console.log(isSubstring("Jump for joy", "joys")===false);

// console.log(isSubstring("Jump for joy", "Jump")===true);

// console.log(isSubstring("Jump for joy", "joy")===true);

// console.log(isSubstring("jqghcwieporighcvbndthydertyfjksdfhg", "ghcv")===true);

// console.log(isSubstring("jqghcwieporibndthydertyfjksdghc", "ghcv")===false);

// console.log(isSubstring("Jump for joy", "Jumper")===false);

// console.log(isSubstring("Jump for joy", "Jam")===false);

// console.log(isSubstring("Jump for joy", "")===true);

// console.log(isSubstring("", "")===true);

function fizzBuzz(array) {
    let fuzzyTits = [];
    array.forEach ((num) => {
        if ((num % 3 === 0) !== (num % 5 === 0)) {
            fuzzyTits.push(num);
        }
    });

    return fuzzyTits;
}

// console.log(fizzBuzz([1,3,5,15,6,9,10,7]));

function isPrime(number) {
    if (number < 2) {
        return false;
    }

    let sqrtOfNum = Math.floor(Math.sqrt(number));
    for (let divisor = 2; divisor <= sqrtOfNum; ++divisor) {
        if (number % divisor === 0) {
            return false;
        }
    }

    return true;
}

function firstNPrimes(numberOfPrimes) {
    let primes = []
    let num = 2
    while (primes.length < numberOfPrimes) {
        if (isPrime(num)) {
            primes.push(num);
        }
        num++;
    }

    return primes;
}

function sumOfNPrimes(numberOfPrimes) {
    let arrayOfPrimes = firstNPrimes(numberOfPrimes);
    let sum = 0;
    arrayOfPrimes.forEach((primeNum) => {
        sum += primeNum;
    });

    return sum;
}

console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));