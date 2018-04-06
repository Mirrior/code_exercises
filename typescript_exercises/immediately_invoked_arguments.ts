// Function Expression
var fullName : (first : string, last : string) => string;

fullName = function(first : string, last : string) {
  return first + " " + last;
}

 console.log(fullName("Jordan", "Hudgens"));

 // Immediately Invoked Version
(function(first : string, last : string){
  console.log(first + " " + last);
})("Tiffany", "Hudgens");