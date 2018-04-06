@detailedLog('billing')
class AccountPayable {
  constructor() {}

  @admin
  deletAccount() {
    console.log('Deleting account...');
  }
}

function detailedLog(dashboard: string) {
  if(dashboard == 'billing') {
    console.log('Working in the billing department');
    return function (target : Object) {};
  } else {
    return function (target : Object) {};
  }
}

function admin (target: object, propertyKey : string, descriptor : TypedPropertyDescriptor<any>) :any {
  console.log('Doing an admin check');
  return descriptor;
}

var post = new AccountPayable;
post.deletAccount();