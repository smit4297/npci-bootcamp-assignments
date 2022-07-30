import { Component, OnInit } from '@angular/core';
import { SalesPerson } from './salesperson';

@Component({
  selector: 'app-sales-person-list',
  templateUrl: './sales-person-list.component.html',
  styleUrls: ['./sales-person-list.component.css']
})
export class SalesPersonListComponent implements OnInit {

  name : string = "Smit";
  s1 : SalesPerson = new SalesPerson("Smit","patel","smitpatel4297@gmail.com",40000,300);

  salesPersonList:SalesPerson[] = [this.s1, new SalesPerson("nevya","patel","nevya@gmail.com",70000,1000)
,new SalesPerson("Henish","patel","henisg@gmail.com",24000,100),
new SalesPerson("Vaishvi","patel","vaishu@gmail.com",90000,3500)];
  constructor() { }

  salesPersonModel : SalesPerson = new SalesPerson ("", "", "", 0,0);
   onSubmit(salesPersonModel : SalesPerson) { 
     console.log(this.salesPersonModel);
     this.salesPersonList.push(salesPersonModel);
   }
  ngOnInit(): void {
  }

}
