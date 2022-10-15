//
//  MainViewController.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/10/12.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var countryImgView1: UIImageView!
    @IBOutlet weak var countryImgView2: UIImageView!
    @IBOutlet weak var countryLabel1: UILabel!
    @IBOutlet weak var countryLabel2: UILabel!
    @IBOutlet weak var moneytextField1: UITextField!
    @IBOutlet weak var moneytextField2: UITextField!

    
    var country: String = ""
    var basePrice: String = ""
//    var timer:Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryLabel2.text! = country
        
        getCountryImg2()
        
//        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector:#selector(timerProc),userInfo:nil, repeats: true)
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
  
//    @objc func timerProc(timer:Timer){
//        let date = Date()
//        let formatter = DateFormatter()
//
//        formatter.dateFormat = "yyyy-MM-dd ccc hh:mm:ss"
//
//        let msg = formatter.string(from: date)
//        currentTime.text = msg
//
//
//        }
    
    @IBAction func exchangeBtn(_ sender: UIButton) {
        
        let money:String = moneytextField1.text!
        
        let deleteDot = basePrice.components(separatedBy: [","]).joined()
        let calculateValue:Double = Double(deleteDot)!
        
        
        
        let result: Double = Double(money)! / calculateValue
        
        moneytextField2.text! = String(format: "%.2f", result)
    }
    
    @IBAction func selectBtn(_ sender: UIButton) {
    }
    
    
    func getCountryImg2(){
        if countryLabel2.text == "아랍에미리트 디르함"{
            countryImgView2!.image = UIImage(named: "AED.png")
        }
        else if countryLabel2.text == "오스트리아 실링"{
            countryImgView2!.image = UIImage(named: "ATS.png")
        }
        else if countryLabel2.text == "호주 달러"{
            countryImgView2!.image = UIImage(named: "AUD.png")
        }
        else if countryLabel2.text == "벨기에 프랑"{
            countryImgView2!.image = UIImage(named: "BEF.png")
        }
        else if countryLabel2.text == "바레인 디나르"{
            countryImgView2!.image = UIImage(named: "BHD.png")
        }
        else if countryLabel2.text == "캐나다 달러"{
            countryImgView2!.image = UIImage(named: "CAD.png")
        }
        else if countryLabel2.text == "스위스 프랑"{
            countryImgView1!.image = UIImage(named: "CHF.png")
        }
        else if countryLabel2.text == "위안화"{
            countryImgView2!.image = UIImage(named: "CNH.png")
        }
        
        else if countryLabel2.text == "독일 마르크"{
           countryImgView2.image = UIImage(named: "DM.png")
        }
        else if countryLabel2.text == "덴마아크 크로네"{
            countryImgView2!.image = UIImage(named: "DKK.png")
        }
        else if countryLabel2.text == "스페인 페세타"{
            countryImgView2!.image = UIImage(named: "ESP.png")
        }
        else if countryLabel2.text == "유로"{
            countryImgView2.image = UIImage(named: "EUR.png")
        }
        else if countryLabel2.text == "핀란드 마르카"{
            countryImgView2.image = UIImage(named: "FIM.png")
        }
        else if countryLabel2.text == "프랑스 프랑"{
           countryImgView2!.image = UIImage(named: "FRF.png")
        }
        else if countryLabel2.text == "영국 파운드"{
            countryImgView2!.image = UIImage(named: "GBP.png")
        }
        else if countryLabel2.text == "홍콩 달러"{
            countryImgView2!.image = UIImage(named: "HKD.png")
        }
        else if countryLabel2.text == "인도네시아 루피아"{
            countryImgView2!.image = UIImage(named: "IDR.png")
        }
        else if countryLabel2.text == "이태리 리라"{
            countryImgView2!.image = UIImage(named: "ITL.png")
        }
        else if countryLabel2.text == "일본 옌"{
           countryImgView2!.image = UIImage(named: "JPY.png")
        }
        else if countryLabel2.text == "한국 원"{
           countryImgView2!.image = UIImage(named: "KRW.png")
        }
        else if countryLabel2.text == "쿠웨이트 디나르"{
            countryImgView2!.image = UIImage(named: "KWD.png")
        }
        else if countryLabel2.text == "말레이지아 링기트"{
            countryImgView2!.image = UIImage(named: "MYR.png")
        }
        else if countryLabel2.text == "네덜란드 길더"{
           countryImgView2!.image = UIImage(named: "NLG.png")
        }
        else if countryLabel2.text == "노르웨이 크로네"{
            countryImgView2!.image = UIImage(named: "NOK.png")
        }
        else if countryLabel2.text == "뉴질랜드 달러"{
            countryImgView2!.image = UIImage(named: "NZD.png")
        }
        else if countryLabel2.text == "사우디 리얄"{
            countryImgView2!.image = UIImage(named: "SAR.png")
        }
        else if countryLabel2.text == "싱가포르 달러"{
            countryImgView2!.image = UIImage(named: "SGD.png")
        }
        else if countryLabel2.text == "태국 바트"{
            countryImgView2!.image = UIImage(named: "THB.png")
        }
        else if countryLabel2.text == "미국 달러"{
            countryImgView2!.image = UIImage(named: "USD.png")
        }
        else if countryLabel2.text == "씨에프에이 프랑(비씨에이오)"{
            countryImgView2!.image = UIImage(named: "ECOWAS.png")
        }
        else if countryLabel2.text == "스웨덴 크로나"{
            countryImgView2!.image = UIImage(named: "SEK.png")
        }
        else{
            countryImgView2!.image = UIImage(named: "")
        }
    }
    
    
}
