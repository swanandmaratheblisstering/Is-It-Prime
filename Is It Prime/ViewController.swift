//
//  ViewController.swift
//  Is It Prime
//
//  Created by MAC on 5/15/18.
//  Copyright © 2018 Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var isItPrimeLabel: UILabel!
    @IBOutlet weak var txtFieldNumber: UITextField!
    @IBAction func IsItPrime(_ sender: UIButton) {
        
        
        var flag = false;
        
        if let number = Int(txtFieldNumber.text!) {
        
            var i = 2;
            
            while i < number {
                
                if(number%i == 0){
                    flag = true;
                    break;
                }
                i+=1;
                
            }
            if(!flag){
                
//                let alert = UIAlertController(title: "Alert", message: "It's a prime No", preferredStyle: UIAlertControllerStyle.alert)
//                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//                self.present(alert, animated: true, completion: nil)
                
                isItPrimeLabel.text = "\(number) is a prime No";
                txtFieldNumber.text = "";
            
            } else{
//                let alert = UIAlertController(title: "Alert", message: "It's not a prime No", preferredStyle: UIAlertControllerStyle.alert)
//                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//                self.present(alert, animated: true, completion: nil)
                isItPrimeLabel.text = "\(number) is not a prime No";
                txtFieldNumber.text = "";
            }
            

        } else{
            
            let alert = UIAlertController(title: "Alert", message: "Please Enter a Number", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

