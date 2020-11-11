//
//  ViewController.swift
//  Animation
//
//  Created by Владислав Сизонов on 11.11.2020.
//

import Spring

class ViewController: UIViewController {
    
    var animation = Animation.getAnimation()

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    @IBOutlet var parametrLAbel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 5
        animationButton.backgroundColor = .cyan
    }


    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        
        animationView.animation = animation[Int.random(in: 0..<animation.count)].name
        animationView.curve = animation[Int.random(in: 0..<animation.count)].curve
        animationView.duration = CGFloat(animation[Int.random(in: 0..<animation.count)].duration)
        animationView.animate()
        
        animationButton.setTitle(animationView.animation, for: .normal)
        
        parametrLAbel.text = """
              Animation - \(animationView.animation)
              Curve - \(animationView.curve)
              Duration - \(animationView.duration)
              """
    }
}

