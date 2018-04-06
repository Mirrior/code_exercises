// var x : number = 0;
// while (x < 10) {
//   console.log(x);
//   x++;
// }
var players = [3, 10, 4, 5, 1];
console.log("For/In");
// for in
// iterates over index
for (var player in players) {
    console.log(player);
}
// for of
// iterates over items in array
console.log("For/Of");
for (var _i = 0, players_1 = players; _i < players_1.length; _i++) {
    var player = players_1[_i];
    console.log(player);
}
//# sourceMappingURL=loops.js.map