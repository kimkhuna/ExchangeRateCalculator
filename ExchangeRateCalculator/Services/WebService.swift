//
//  WebService.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/10/11.
//

import Foundation

class WebService{
    
    func getMoney(url: URL, completion: @escaping([Money]?) -> ()){
        
        URLSession.shared.dataTask(with: url){
            (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data{
                let moneyList = try? JSONDecoder().decode([Money].self, from: data)
                completion(moneyList)
            }
        }.resume()
 
    }
}
