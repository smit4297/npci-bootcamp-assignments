import { Component, OnInit, NgModule } from '@angular/core';
import { Product } from 'src/app/common/product';
import { ProductCategory } from 'src/app/common/product-category';
import { ProductManagementService } from 'src/app/services/product-management.service';
import { Router } from '@angular/router';
import {WelcomeComponent} from 'src/app/components/welcome/welcome.component'
// export {WelcomeComponent};

@Component({
  selector: 'app-add-product',
  templateUrl: './add-product.component.html',
  styleUrls: ['./add-product.component.css']
})

export class AddProductComponent implements OnInit {

  categories : ProductCategory[] = [];
  constructor(private service : ProductManagementService, private route:Router) { }

  ngOnInit(): void {
    this.listOfCategories()
  }

  listOfCategories(){
    this.service.getAllCategories().subscribe((data:any)=>{
      this.categories = data
    })
  }

  productModel : Product = new Product (0,"","","",0,"",0,new Date(Date.now()),new Date(Date.now()),0)
  onSubmit(productModel : Product) { 
    this.productModel = productModel;
    this.service.saveProduct(this.productModel).subscribe(()=>{
      this.route.navigateByUrl("/products")
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
