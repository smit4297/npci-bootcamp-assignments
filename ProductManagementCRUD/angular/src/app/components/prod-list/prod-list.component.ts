import { Component, OnInit } from '@angular/core';
import { ProductManagementService } from 'src/app/services/product-management.service';
import { Product } from 'src/app/common/product';
import { Router } from '@angular/router';


@Component({
  selector: 'app-prod-list',
  templateUrl: './prod-list.component.html',
  styleUrls: ['./prod-list.component.css']
})
export class ProdListComponent implements OnInit {

 
  constructor(private service : ProductManagementService, private route:Router) { }
  productList:Product[] = [];
  ngOnInit(): void {
    this.listOfProducts()
  }

listOfProducts(){
  this.service.getAllProducts().subscribe((data:any)=>{
    console.log(data);
    this.productList = data;
  })
}

productDetails(){
  this.route.navigateByUrl("/products")
}

goToHome(){
  this.route.navigateByUrl("")
}

buyProduct(){
  this.route.navigateByUrl("/buyproduct")
}
categoryDetails(){
  this.route.navigateByUrl("/categories")
}

addProduct(){
  this.route.navigateByUrl("/addProduct")
}
addCategory(){
  this.route.navigateByUrl("/addCategory")
}

}
