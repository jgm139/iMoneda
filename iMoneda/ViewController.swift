//
//  ViewController.swift
//  iMoneda
//
//  Created by Máster Móviles on 22/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let moneda = Moneda()
    @IBOutlet weak var imageResult: UIImageView!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LanzarPressed(_ sender: Any) {
        let tirada = moneda.lanzar()
        let imagen: UIImage
        self.labelResult.text = tirada.rawValue
        
        if tirada.rawValue == Tirada.cara.rawValue {
            imagen = UIImage(named:"cara")!
        } else {
            imagen = UIImage(named:"cruz")!
        }
        
        self.imageResult.image = imagen
    }

}

