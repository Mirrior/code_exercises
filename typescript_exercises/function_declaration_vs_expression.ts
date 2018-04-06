// Function declaration can be called anywhere because functions are hoisted
function fullName(first : string, last : string) : string {
  return first + " " + last;
}

// Function Expression can only be call after they have been defined
var otherFullName : (first : string, last : string) => string;

otherFullName = function (first : string, last : string) : string {
  return first + " " + last;
}

var thirdFullName : (first : string, last : string) => string = function (first : string, last : string) {
  return first + " " + last;
}

console.log(fullName("Jordan", "Hudgens"));
console.log(otherFullName("Jordan", "Hudgens"));
console.log(thirdFullName("Jordan", "Hudgens"));