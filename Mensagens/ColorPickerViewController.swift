//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Alexandre Robaert on 01/04/21.
//

import UIKit

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viewColorBackground: UIView!
    @IBOutlet weak var sliderVermelho: UISlider!
    @IBOutlet weak var sliderVerde: UISlider!
    @IBOutlet weak var sliderAzul: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func escolherCor(_ sender: Any) {
        
    }
}
