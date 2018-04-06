// Function Expression
var fullName;
fullName = function (first, last) {
    return first + " " + last;
};
console.log(fullName("Jordan", "Hudgens"));
// Immediately Invoked Version
(function (first, last) {
    console.log(first + " " + last);
})("Tiffany", "Hudgens");
//# sourceMappingURL=immediately_invoked_arguments.js.map