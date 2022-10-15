//
//  MoneyViewModel.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/10/11.
//

import Foundation
import UIKit


struct MoneyListViewModel{
    
    let moneys: [Money]
    
    
}

extension MoneyListViewModel{
    
    
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int{
        
        return self.moneys.count
    }
    
    func moneyAtIndex(_ index: Int) -> MoneyViewModel{
        let money = self.moneys[index]
        return MoneyViewModel(money)
    }
  
    
   
}

struct MoneyViewModel{
    private let money: Money
}

extension MoneyViewModel{
    init(_ money: Money){
        self.money = money
    }
}

extension MoneyViewModel{
    var country: String?{
        return self.money.cur_nm
    }
    var unit: String?{
        return self.money.cur_unit
    }
    var basePrice: String?{
        return self.money.deal_bas_r
    }
    
   
}
