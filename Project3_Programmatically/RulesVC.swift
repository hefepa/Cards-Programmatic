//
//  RulesVC.swift
//  Project3_Programmatically
//
//  Created by WEMA on 19/12/2023.
//

import UIKit

class RulesVC: UIViewController {
    let ruleLabel = UILabel()
    let instructionLabel = UILabel()
    let exerciseLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        rulesLabelFeatures()
        instructionLabelFeatures()
        exerciseLabelFeatures()

        // Do any additional setup after loading the view.
    }
    
    func rulesLabelFeatures(){
        view.addSubview(ruleLabel)
        ruleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        ruleLabel.text = "Rules"
        ruleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        ruleLabel.textAlignment = .center
        
        
        NSLayoutConstraint.activate([
            ruleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            ruleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            ruleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func instructionLabelFeatures(){
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        instructionLabel.text = "The value of each card represent the number of exercise you do \n\n" +
                                "J = 11, Q = 12, K = 13, A = 14"
        instructionLabel.textAlignment = .center
        instructionLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        //instructionLabel.lineBreakMode = .byWordWrapping
        instructionLabel.numberOfLines = .zero
        
        NSLayoutConstraint.activate([
            instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            instructionLabel.topAnchor.constraint(equalTo: ruleLabel.bottomAnchor, constant: 30),
            instructionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func exerciseLabelFeatures(){
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        exerciseLabel.text = "♠️ = Push-up  \n\n♥️ = Sit-up \n\n" +
                             "♣️ = Burpess \n\n♦️ = Jumping jacks"
        exerciseLabel.textAlignment = .natural
        exerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        exerciseLabel.numberOfLines = .zero
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 70),
            exerciseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            exerciseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }


}
