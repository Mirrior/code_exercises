// var x : number = 0;

// while (x < 10) {
//   console.log(x);
//   x++;
// }

let players : number[] = [3, 10, 4, 5, 1];
console.log("For/In");

// for in
// iterates over index
for (let player in players) {
  console.log(player);
}

// for of
// iterates over items in array
console.log("For/Of");
for (let player of players) {
  console.log(player);
}