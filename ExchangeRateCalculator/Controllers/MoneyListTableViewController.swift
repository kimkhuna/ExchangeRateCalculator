//
//  MoneyListTableViewController.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/10/11.
//

import UIKit

class MoneyListTableViewController: UITableViewController{
    
    
    @IBOutlet var moneyTableView: UITableView!
    
    private var moneyListVM: MoneyListViewModel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    
    // https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=y6rBjV1m8HoXso6APfx7F2BWAWLA89Up&data=AP01
    private func setup(){
        
        let url = URL(string: "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=y6rBjV1m8HoXso6APfx7F2BWAWLA89Up&data=AP01")!
        WebService().getMoney(url: url){
            (money) in
            
            if let money = money{
                self.moneyListVM = MoneyListViewModel(moneys: money)
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.moneyListVM.numberOfRowsInSection(section)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.moneyListVM == nil ? 0 : self.moneyListVM.numberOfSections
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoneyCell", for: indexPath) as? MoneyTableViewCell
        else{fatalError("no matched MoneyCell identifier")}
        
        let moneyVM = self.moneyListVM.moneyAtIndex(indexPath.row)
        cell.countryLabel?.text = moneyVM.country
        cell.basePriceLabel?.text = moneyVM.basePrice
        cell.unitLabel?.text = moneyVM.unit
        
     
        
        if cell.countryLabel.text == "아랍에미리트 디르함"{
            cell.countryImgView!.image = UIImage(named: "AED.png")
        }
        else if cell.countryLabel.text == "오스트리아 실링"{
            cell.countryImgView!.image = UIImage(named: "ATS.png")
        }
        else if cell.countryLabel.text == "호주 달러"{
            cell.countryImgView!.image = UIImage(named: "AUD.png")
        }
        else if cell.countryLabel.text == "벨기에 프랑"{
            cell.countryImgView!.image = UIImage(named: "BEF.png")
        }
        else if cell.countryLabel.text == "바레인 디나르"{
            cell.countryImgView!.image = UIImage(named: "BHD.png")
        }
        else if cell.countryLabel.text == "캐나다 달러"{
            cell.countryImgView!.image = UIImage(named: "CAD.png")
        }
        else if cell.countryLabel.text == "스위스 프랑"{
            cell.countryImgView!.image = UIImage(named: "CHF.png")
        }
        else if cell.countryLabel.text == "위안화"{
            cell.countryImgView!.image = UIImage(named: "CNH.png")
        }
        else if cell.countryLabel.text == "독일 마르크"{
            cell.countryImgView!.image = UIImage(named: "DM.png")
        }
        else if cell.countryLabel.text == "덴마아크 크로네"{
            cell.countryImgView!.image = UIImage(named: "DKK.png")
        }
        else if cell.countryLabel.text == "스페인 페세타"{
            cell.countryImgView!.image = UIImage(named: "ESP.png")
        }
        else if cell.countryLabel.text == "유로"{
            cell.countryImgView!.image = UIImage(named: "EUR.png")
        }
        else if cell.countryLabel.text == "핀란드 마르카"{
            cell.countryImgView!.image = UIImage(named: "FIM.png")
        }
        else if cell.countryLabel.text == "프랑스 프랑"{
            cell.countryImgView!.image = UIImage(named: "FRF.png")
        }
        else if cell.countryLabel.text == "영국 파운드"{
            cell.countryImgView!.image = UIImage(named: "GBP.png")
        }
        else if cell.countryLabel.text == "홍콩 달러"{
            cell.countryImgView!.image = UIImage(named: "HKD.png")
        }
        else if cell.countryLabel.text == "인도네시아 루피아"{
            cell.countryImgView!.image = UIImage(named: "IDR.png")
        }
        else if cell.countryLabel.text == "이태리 리라"{
            cell.countryImgView!.image = UIImage(named: "ITL.png")
        }
        else if cell.countryLabel.text == "일본 옌"{
            cell.countryImgView!.image = UIImage(named: "JPY.png")
        }
        else if cell.countryLabel.text == "한국 원"{
            cell.countryImgView!.image = UIImage(named: "KRW.png")
        }
        else if cell.countryLabel.text == "쿠웨이트 디나르"{
            cell.countryImgView!.image = UIImage(named: "KWD.png")
        }
        else if cell.countryLabel.text == "말레이지아 링기트"{
            cell.countryImgView!.image = UIImage(named: "MYR.png")
        }
        else if cell.countryLabel.text == "네덜란드 길더"{
            cell.countryImgView!.image = UIImage(named: "NLG.png")
        }
        else if cell.countryLabel.text == "노르웨이 크로네"{
            cell.countryImgView!.image = UIImage(named: "NOK.png")
        }
        else if cell.countryLabel.text == "뉴질랜드 달러"{
            cell.countryImgView!.image = UIImage(named: "NZD.png")
        }
        else if cell.countryLabel.text == "사우디 리얄"{
            cell.countryImgView!.image = UIImage(named: "SAR.png")
        }
        else if cell.countryLabel.text == "싱가포르 달러"{
            cell.countryImgView!.image = UIImage(named: "SGD.png")
        }
        else if cell.countryLabel.text == "태국 바트"{
            cell.countryImgView!.image = UIImage(named: "THB.png")
        }
        else if cell.countryLabel.text == "미국 달러"{
            cell.countryImgView!.image = UIImage(named: "USD.png")
        }
        else if cell.countryLabel.text == "씨에프에이 프랑(비씨에이오)"{
            cell.countryImgView!.image = UIImage(named: "ECOWAS.png")
        }
        else if cell.countryLabel.text == "브루나이 달러"{
            cell.countryImgView!.image = UIImage(named: "BND.png")
        }
        else if cell.countryLabel.text == "스웨덴 크로나"{
            cell.countryImgView!.image = UIImage(named: "SEK.png")
        }
        else{
            cell.countryImgView!.image = UIImage(named: "")
        }
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "MainVC", sender: indexPath.row)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if  let mainVC = segue.destination as? MainViewController{
            if let index = sender as? Int{
                
                let moneyVM = self.moneyListVM.moneyAtIndex(index)
                mainVC.country = moneyVM.country!
                mainVC.basePrice = moneyVM.basePrice!
            }
        }
    }
    
}
