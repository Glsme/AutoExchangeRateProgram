//
//  main.swift
//  AutoExchangeRateProgram
//
//  Created by Seokjune Hong on 2022/07/27.
//

import Foundation

struct ExchangeRate {
    var currentRate: Double {
        willSet {
            print("환율 변동 예정 \(currentRate) -> \(newValue)")
        }
        
        didSet {
            print("환율 변동 완료 \(oldValue) -> \(currentRate)")
        }
    }
    
    var USD: Double {
        willSet {
            print("환전 금액 USD \(newValue)달러로 환전 예정.")
        }
        
        didSet {
            print("KRW\(self.KRW)원 -> \(oldValue)로 환전 완료.")
        }
    }
    
    var KRW: Double {
        get {
            return 
        }
        
        set {
            self.USD = newValue / self.currentRate
        }
    }
}

var rate = ExchangeRate(currentRate: 1100, USD: 1)

rate.KRW = 500000
//rate.currentRate = 1350
rate.KRW = 50000
