//
//  main.swift
//  Restaurant
//
//  Created by Anna Hakobyan on 24.09.24.
//

import Foundation

let customer = Customer()
let waiter = Waiter(customers: [customer])
let order = Order(appetizers: [.caesar, .green], mainCourses: [.pasta, .chicken], desserts: [.iceCream, .brownie, .lavaCake], beverages: [.tea, .water])

print("""
      Customer with ID: \(customer.id) 
      gives an order:
      \(order.orderDetails)to the waiter with ID: \(waiter.id), 
      with total price \(order.bill)) drams
      """)
