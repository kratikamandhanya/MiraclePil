//
//  ViewController.swift
//  MiraclePil
//
//  Created by Nayan Gaikwad on 09/07/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

 
    
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]
    //Declaration of lables and text field
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var streetLable: UILabel!
    
    @IBOutlet weak var streetTextField: UITextField!
    
      @IBOutlet weak var cityLable: UILabel!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var stateLable: UILabel!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLable: UILabel!
    
    @IBOutlet weak var successIcon: UIImageView!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var zipLable: UILabel!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    @IBOutlet weak var zipTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    @IBAction func statePickerBtnPresed(_ sender: Any) {
        statePicker.isHidden = false
        countryTextField.isHidden = true
        countryLable.isHidden = true
        zipTextField.isHidden = true
        zipLable.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTextField.isHidden = false
        countryLable.isHidden = false
        zipTextField.isHidden = false
        zipLable.isHidden = false
        

    }
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        var lab: [UIView] = [nameLable,nameTextField,streetLable,streetTextField,cityLable,cityTextField,stateLable,statePicker,statePickerBtn,countryLable,countryTextField,zipLable,zipTextField,buyNowBtn]
        let cout = lab.count
        for index in 0..<cout
        {
            lab[index].isHidden = true
        }
        successIcon.isHidden = false
        
    }
    

}

