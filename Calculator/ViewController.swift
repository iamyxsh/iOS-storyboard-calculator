//
//  ViewController.swift
//  Calculator
//
//  Created by Yash on 14/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var result = ""
    private var output: String? = ""
    private var varArr = [Int]()
    private var oper = ""
    
    @IBOutlet weak var labelOutput: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnClear(_ sender: Any) {
        varArr = []
        result = "0"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnDel(_ sender: Any) {
        if(result.count > 1){
            result = String(result.dropLast())
            changeOutputLabel(result: result)
        } else {
            result = ""
            labelOutput.text = "0"
        }
            }
    
    
    @IBAction func btnMod(_ sender: Any) {
    }
    
    
    @IBAction func btnDivide(_ sender: Any) {
    }
    
    
    @IBAction func btnMultiply(_ sender: Any) {
    }
    
    
    @IBAction func btnMinus(_ sender: Any) {
       
    }
    
    
    @IBAction func btnPlus(_ sender: Any) {
        if(result != ""){
            varArr.append(Int(result) ?? 0)
            result = ""
        }
        oper = "+"
    }
    
    
    @IBAction func btnDecimal(_ sender: Any) {
    }
    
    
    @IBAction func btnResult(_ sender: Any) {
        if(result != ""){
            varArr.append(Int(result) ?? 0)
        }
      
        if(oper == "+"){
            result = String(varArr.reduce(0,+))
        } if(oper == "-"){
            result = String(varArr.reduce(0,+))
        } else {
            return
        }
        oper = ""
        varArr = []
                
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnSeven(_ sender: Any) {
        result = result + "7"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnEight(_ sender: Any) {
        result = result + "8"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnNine(_ sender: Any) {
        result = result + "9"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnFour(_ sender: Any) {
        result = result + "4"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnFive(_ sender: Any) {
        result = result + "5"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnSix(_ sender: Any) {
        result = result + "6"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnOne(_ sender: Any) {
        result = result + "1"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnTwo(_ sender: Any) {
        result = result + "2"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnThree(_ sender: Any) {
        result = result + "3"
        changeOutputLabel(result: result)
    }
    
    
    @IBAction func btnZero(_ sender: Any) {
        result = result + "0"
        changeOutputLabel(result: result)
    }
    
    func changeOutputLabel(result : String) {
        labelOutput.text = result
    }
    
    
}

