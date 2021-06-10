//
//  TienDienViewController.swift
//  BaitapBuoi10
//
//  Created by Chu Du on 10/06/2021.
//

import UIKit

class TienDienViewController: UIViewController {

    @IBOutlet weak var soDienTextField: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var ketQuaLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Tính tiền điện"
        titleLabel.font = UIFont.systemFont(ofSize: 40)
        titleLabel.textAlignment = .center

        soDienTextField.placeholder = "Số điện"
        soDienTextField.keyboardType = .numberPad
        
        myButton.setTitle("Tính toán", for: .normal)
        myButton.layer.cornerRadius = myButton.frame.height/2
        myButton.backgroundColor = .cyan
        
        clearButton.setTitle("Làm mới", for: .normal)
        clearButton.layer.cornerRadius = clearButton.frame.height/2
        clearButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        ketQuaLabel.text = ""
        ketQuaLabel.font = UIFont.systemFont(ofSize: 20)
        ketQuaLabel.numberOfLines = 2
        
    }
    
    @IBAction func onPress(_ sender: Any) {
        guard let soDienText = soDienTextField.text, let soDien:Float = Float(soDienText) else {
            return
        }
        
        var result:Float = 0
        
        if soDien <= 50 {
            result = soDien * 1678
        } else {
            if soDien <= 100 {
                result = 83900 + (soDien - 50) * 1734
            } else {
                if soDien <= 200 {
                    result = 83900 + 86700 + (soDien - 100) * 2014
                } else {
                    if soDien <= 300 {
                        result = 83900 + 86700 + 201400 + (soDien - 200) * 2536
                    } else {
                        if soDien <= 400 {
                            result = 83900 + 86700 + 201400 + 253600 + (soDien - 300) * 2834
                        } else {
                            result = 83900 + 86700 + 201400 + 253600 + 283400 + (soDien - 400) * 2927
                        }
                    }
                }
            }
        }
        ketQuaLabel.text = "Tiền điện tháng này của bạn là: \n\(Int(result))đ"
    }
    
    @IBAction func clearPress(_ sender: Any) {
        soDienTextField.text = ""
        ketQuaLabel.text = ""
    }
    
    
}
