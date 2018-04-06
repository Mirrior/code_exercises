const user = {
  name: 'Kristine',
  email: 'krinstine@devcamp.com'
}

const renderUser = ({ name, email }) => {
  console.log(`${name}: ${email}`);
}

renderUser(user);