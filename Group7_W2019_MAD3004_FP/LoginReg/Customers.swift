//
//  Customers.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
 



class Customers:User
{
    var customerName: String
    var address: String
    var email: String
    var creditCardInfo: String
    var shippingInfo: String
    var dicOfCustomers = [String:Customers]()
    let shoppingCart = ShoppingCart.getShoppingCart()
    

    init?(customerId: String,customerName: String,address: String,email: String,password: String,creditCardInfo: String,shippingInfo: String, loginStatus: LoginStatus){
        
        if(!dicOfCustomers.isEmpty){
            if dicOfCustomers[customerId] != nil {
                return nil
            }
        }
        

   required init(){
    
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
    }
    super.init(){
        
    }
    init?(customerName: String,address: String,email: String,creditCardInfo: String,shippingInfo: String){
        
    

    
    init?(customerId: Int,customerName: String,address: String,email: String,password: String,creditCardInfo: String,shippingInfo: String, loginStatus: LoginStatus ){
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
        super.init(userId: customerId, password: password, loginStatus:loginStatus)


        if customerId.isEmpty{
            print("Customer ID should not be empty")
            return nil
        }
        
        if customerName.count < 10{

    
        if customerName.count < 10
        {

            print("Customer Name must be >= 10 length")
            return nil
        }
        
        if !password.isValidPassword(){
            print("Invalid Password format")
            return nil
        }
        
        if ((address.isEmpty) || (address == "")){
            print("Adrress field cannot be empty")
        }
        
        if email.count < 6{
            print("Customer Email ID must be >= 6 length")
            return nil
        }
        else{
            if !email.isValidEmail(){
                print("Invalid Student Email ID")
                return nil
            }
        }
        registerCustomer(customer: self)
    }
    
    
    func registerCustomer(customer: Customers){
        dicOfCustomers[customer.userId] = customer
    }
    
    func login(userId: String, password: String)-> Bool{
        var login: Bool = false
        for (id, customer) in dicOfCustomers{
            if ((id == userId) && (customer.password == password)){
                print("Successfuly login")
                login = true
            }else{
                print("User Id Password does not match")
                login = false
            }
        }
        return login
    }
    
    func updateProfile(){
        
    }
    
    func placeOrder(shippingInfo: ShippingInfo!){
        if let shipingInfo1 = shippingInfo{
            let order = Orders(dateShipped: Date(),customerId: userId,customerName: customerName,status: "Processing",shippingId: "1", shippingInfo: shipingInfo1)
            order.placeOrder(shippingInfo: shippingInfo, products: shoppingCart.getArrayOfProducts)
        }else{
            print("Please pass the Shipping Information")
        }
    }
    
   
    


override func printData(){
    super.printData()
    print("Customer ID    : \(String(describing: self.customerName))")

override func printData()
{
    print("Customer Name    : \(String(describing: self.customerName))")
    print("Customer Name  : \(String(describing: self.address))")
    print("Customer Email : \(String(describing: self.email))")
    print("Credit Card     : \(String(describing: self.creditCardInfo))")
    print("Shipping Info   : \(String(describing: self.shippingInfo))")
    }
}

