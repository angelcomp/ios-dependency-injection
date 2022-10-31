//
//  ViewController.swift
//  ios-dependency-injection
//
//  Created by Angelica dos Santos on 31/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.setTitle("Tap me", for: .normal)
        button.center = view.center
        button.setTitleColor(.white, for: .normal)
    }
}

