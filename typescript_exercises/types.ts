// Boolean
let paidAccount : boolean = false;

// Number
let age : number = 33;
var taxRate : number = 7.5;

// String
var fullName : string = "Jordan Hudgens";

// Array
var ages : number[] = [33, 28, 11];

// Tuple
let player : [number, string];
player = [3, "Corerra"];

// Enum
enum ApprovalStatus {Approved, Pending, Rejected};
let job : ApprovalStatus = ApprovalStatus.Pending;

// Any
var apiData : any[] = [132, "Jordan", false];

// Void
function printOut(msg: string) : void {
  console.log(msg);
}