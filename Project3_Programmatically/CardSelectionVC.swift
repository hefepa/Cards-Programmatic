//
//  CardSelectionVC.swift
//  Project3_Programmatically
//
//  Created by WEMA on 19/12/2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop!")
    let restartButton = CWButton(backgroundColor: .systemGreen, title: "Restart")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")
    var cards: [UIImage] = Cards.allCards
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UIInterface()
        startTime()
    }
    
    func UIInterface(){
        imageView()
        stopButtonFeature()
        restartButtonFeature()
        rulesButtonFeature()    
    }
    
    func imageView(){
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "JS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
        ])
    }
    
    func stopButtonFeature(){
        view.addSubview(stopButton)
        
        stopButton.addTarget(self, action: #selector(stopButtonInvalidate), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 250),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 60)
        ])
    }
    
    func restartButtonFeature(){
        view.addSubview(restartButton)
        
        restartButton.addTarget(self, action: #selector(restartButtonValidation), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.widthAnchor.constraint(equalToConstant: 115),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func restartButtonValidation(){
        timer.invalidate()
        startTime()
    }
    
    func rulesButtonFeature(){
        view.addSubview(rulesButton)
        
        rulesButton.addTarget(self, action: #selector(presentRules), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor)
        ])
    }
    
    @objc func presentRules(){
        present(RulesVC(), animated: true)
    }
    
    @objc func randomCards(){
        cardImageView.image = Cards.allCards.randomElement()
    }
    
    func startTime(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(randomCards), userInfo: nil, repeats: true)
    }
    @objc func stopButtonInvalidate(){
        timer.invalidate()
    }

}
