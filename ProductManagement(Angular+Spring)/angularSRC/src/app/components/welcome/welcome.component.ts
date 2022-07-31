import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.css']
})
export class WelcomeComponent implements OnInit {

  constructor(private route : Router) { }

  ngOnInit(): void {
  }

  productDetails(){
    this.route.navigateByUrl("/products")
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
