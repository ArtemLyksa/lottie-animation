//
//  ViewController.swift
//  lottie-animation
//
//  Created by Artem Lyksa on 7/28/19.
//  Copyright © 2019 lyksa. All rights reserved.
//

import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) { [weak self] in
            self?.setupAnimation()
        }
        // Do any additional setup after loading the view.
    }

    private func setupAnimation() {
        animationView.animation = Animation.named("lottie-animation")
        animationView.play { (finished) in
            /// Animation finished
        }
    }

}

