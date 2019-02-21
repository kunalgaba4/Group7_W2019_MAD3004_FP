//
//  Customers.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
 
class Customers
{
    var customerId: Int
    var customerName: String
    var address: String
    var email: String
    var password: String
    var creditCardInfo: String
    var shippingInfo: String
    
    
    
   required init(){
        self.customerId = Int()
        self.customerName = String()
        self.password = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
    }
    
    init?(customerId: Int,customerName: String,address: String,email: String,password: String,creditCardInfo: String,shippingInfo: String){
        
        self.customerId = customerId
        self.customerName = customerName
        self.address = address
        self.email = email
        self.password = password
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    
        if customerId < 0
        {
            print("Customer ID must be >= 0")
            return nil
        }
        
        if customerName.count < 10
        {
            print("Customer Name must be >= 10 length")
            return nil
        }
        if email.count < 6
        {
            print("Customer Email ID must be >= 6 length")
            return nil
        }else
        {
            if !email.isValidEmail()
            {
                print("Invalid Student Email ID")
                return nil
            }
            
            if !password.isValidPassword()
            {
                print("Invalid Password format")
                return nil
            }
        }
        
        
    }
    
    
    func login(){
        
    }
    
    func updateProfile(){
        
        
    }
    
    

func printData()
{
    print("Customer ID    : \(String(describing: self.customerName))")
    print("Customer Name  : \(String(describing: self.address))")
    print("Customer Email : \(String(describing: self.email))")
    print("Credit Card     : \(String(describing: self.creditCardInfo))")
    print("Shipping Info   : \(String(describing: self.shippingInfo))")
}
}

