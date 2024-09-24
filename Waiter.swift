//
//  Waiter.swift
//  Restaurant
//
//  Created by Anna Hakobyan on 24.09.24.
//
import Foundation

final class Waiter: IIdentifiable {
    var id: Int
    private var customers: [Customer]

    init(customers: [Customer]) {
        self.customers = customers
        self.id = Int.random(in: 0...200)
    }

    func addCustomer(_ customer: Customer) {
        customers.append(customer)
    }
}
