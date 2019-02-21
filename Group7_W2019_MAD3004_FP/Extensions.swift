//
//  Extensions.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by Jagmeet Kaur on 2019-02-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

func isValidEmail() -> Bool
{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: self)
}
    
