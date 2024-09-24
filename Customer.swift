//
//  Customer.swift
//  Restaurant
//
//  Created by Anna Hakobyan on 24.09.24.
//
import Foundation

final class Customer: IIdentifiable {
    var id: Int

    private weak var waiter: Waiter?

    init(waiter: Waiter? = nil) {
        self.waiter = waiter
        id = Int.random(in: 0...200)
        waiter?.addCustomer(self)
    }

    func addWaiter(waiter: Waiter) {
        if self.waiter == nil {
            self.waiter = waiter
            waiter.addCustomer(self)
        } else {
            fatalError("You already have a waiter")
        }
    }
}
