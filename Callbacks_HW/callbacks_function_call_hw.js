// const readline = require('readline');

// const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });

function teaAndBiscuits() {

    reader.question('Would you like some tea?', (wantsTea) => {
        console.log(`You replied ${wantsTea}.`);

        reader.question('Would you like some biscuits?', (wantsBiscuits) => {
            console.log(`You replied ${wantsBiscuits}.`);

            const firstRes = (wantsTea === 'yes') ? 'do' : 'don\'t';
            const secondRes = (wantsBiscuits === 'yes') ? 'do' : 'don\'t';
            console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
            reader.close();
        });
    });
}

// reader.question('Would you like some tea?', (wantsTea) => {
//     console.log(`You replied ${wantsTea}.`);

//     reader.question('Would you like some biscuits?', (wantsBiscuits) => {
//         console.log(`You replied ${wantsBiscuits}.`);

//         const firstRes = (wantsTea === 'yes') ? 'do' : 'don\'t';
//         const secondRes = (wantsBiscuits === 'yes') ? 'do' : 'don\'t';
//         console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
//         reader.close();
//     });
// });

// function Derp(wantsBiscuits) {
//     console.log(`You replied ${wantsBiscuits}.`);

//     const firstRes = (wantsTea === 'yes') ? 'do' : 'don\'t';
//     const secondRes = (wantsBiscuits === 'yes') ? 'do' : 'don\'t';
//     console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
//     reader.close();
// }

// function Bretty(wantsTea) {

//     console.log(`You replied ${wantsTea}.`);

//     reader.question('Would you like some biscuits?', Derp);
// }

// function teaAndBiscuits() {

//     reader.question('Would you like some tea?', Bretty);
// }

// teaAndBiscuits();

function Cat () {
    this.name = 'Markov';
    this.age = 3;
}

function Dog () {
    this.name = 'Noodles';
    this.age = 4;
}

Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();

// Noodles.chase(Markov);

// Noodles.chase.call(Markov, Noodles);

Noodles.chase.apply(Markov, [Noodles]);