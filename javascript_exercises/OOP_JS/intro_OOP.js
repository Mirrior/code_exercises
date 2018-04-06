class Instructor {
  constructor({ name, role = 'Assistant'}) {
    this.name = name;
    this.role = role;
  }

  renderDetails() {
    console.log(`${this.name}: ${this.role}`  );
  }

  static helloWorld () {
    console.log('Hello World!');
  }

  static canTeach(instructor) {
    return (instructor.role === 'classroom');
  }
}

// const brayden = new Instructor({ name: 'Brayden', role: 'Teacher'});
// brayden.renderDetails();

// Instructor.helloWorld();


const jon = new Instructor({ name: 'Jon Snow' });
// jon.renderDetails();
console.log(
  `${jon.name} can teach: ${Instructor.canTeach(jon)}`
  );

const alice = new Instructor({ name: 'Alice Wonder', role: 'classroom' });
// jon.renderDetails();
console.log(
  `${alice.name} can teach: ${Instructor.canTeach(alice)}`
  );