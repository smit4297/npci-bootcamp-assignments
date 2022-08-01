export class Product {

    constructor(
        public productId : number,
        public sku : string,
        public name : string,
        public description : string,
        public unitprice : number,
        public imageurl : string,
        public unitsinstock : number,
        public datecreated : Date,
        public lastupdated : Date,
        public categoryid : number){}
}
