@detailedLog('billing')
class AccountPayable {
  constructor() {}
}

@detailedLog('warehouse')
class ProductManager {
  constructor() {}
}

function detailedLog(dashboard: string) {
  if(dashboard == 'billing') {
    console.log('Working in the billing department');
    return function (target : Object) {};
  } else {
    return function (target : Object) {};
  }
}

var post = new AccountPayable;
var pm = new ProductManager;