var Invoice = /** @class */ (function () {
    function Invoice(name, city, state) {
        this.name = name;
        this.city = city;
        this.state = state;
        this.companyProfile = name + ", " + city + ", " + state;
    }
    return Invoice;
}());
var googleInvoice = new Invoice('Google', 'Mountain View', 'State');
var yahooInvoice = new Invoice('Yahoo', 'Mountain SF', 'State');
console.log(googleInvoice.companyProfile);
console.log(yahooInvoice.companyProfile);
//# sourceMappingURL=classes.js.map