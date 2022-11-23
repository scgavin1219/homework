Array.prototype.myEach = function(func) { 
    for(let i = 0; i < this.length; i++ ) { 
        func(this[i]);
    }
}

Array.prototype.myMap = function(funcTwo) {
    let myMapped = []; 
    this.myEach((el) => {
        let result = funcTwo(el);
        myMapped.push(result);
    })
   return myMapped
}

function titleize(names, func) { 
    let titles = names.myMap(name => `Mx ${name} Jingleheimer Schmidt`);
    func(titles);
};


titleize(["Mary", "Brian", "Leo"], (names) => {
    names.myEach(name => console.log(name));
});

class Elephant { 
    constructor(name, height, tricks) { 
        this.name = name;
        this.height = height;
        this.tricks = tricks;
    }
    trumpet() { 
        console.log(
            console.log(`${this.name} the elephant goes 'phRRRRRRRRRRR!`)
        );
    }
    
    grow() { 
        this.height += 12;
    }

    addTrick(trick) {
        this.tricks.push(trick);
    };

    play() { 
        let tricksIndex = Math.floor(Math.random() * this.tricks.length);
        console.log(`${this.name} is ${this.tricks[tricksIndex]}!`);
    }

}



Elephant.paradeHelper = function(elephant) { 
    console.log(`${elephant.name} is galloping by you!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


function dinerBreakfast() {
    let order = "i'd like a peanut omelette please.";
    console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};