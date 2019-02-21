//
//  Orders.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class Orders {
    var orderId: Int
    var dateCreated: Date
    var dateShipped: Date
    var customerName: String
    var customerId: Int
    var status: String
    var shippingId: String
    
    init(orderId: Int, dateCreated: Date, dateShipped: Date, customerId: Int, customerName:String, status: String, shippingId: String   )
    {
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.customerId = customerId
        self.customerName = customerName
        self.status = status
        self.shippingId = shippingId
    }
    
    func placeOrder(){
    
    }
}
