//
//  ViewController.swift
//  iGasoline
//
//  Created by Matheus Amendola on 11/03/20.
//  Copyright © 2020 Matheus Amendola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfDistance: UITextField!
    @IBOutlet weak var tfGasoline: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var viResult: UIView!
    
    var consumo: Double = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        viResult.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: Any) {
        if let distance = Double(tfDistance.text!),
            let gasoline = Double(tfGasoline.text!){
            consumo = distance / gasoline
            showResults()
    }
        print(consumo)
    
}
    func showResults(){
        let consumoT = String(format: "%.1f", consumo)
        lbResult.text! = "\(consumoT) Km/l"
        viResult.isHidden = false //aparece a view
        view.endEditing(true) //Desaparece o Teclado
    }
    
}

