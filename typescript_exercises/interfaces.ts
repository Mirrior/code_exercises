interface User {
  email : string;
  firstName? : string; 
  lastName? : string;
}  

function profile(user : User) : string {
  return `Welcome, ${user.firstName}  `;
} 

var realUser = {
email: 'test@test.test',
firstName: 'Jordan',
// lastName: 'Hudgens'
};

console.log(profile(realUser));
console.log(realUser.email);
