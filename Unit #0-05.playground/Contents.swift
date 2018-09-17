// Created on: Sept-2018
// Created by: Mark Ison
// Created for: ICS3U
// This program is the UIKit solution for Solving the Rectangle
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLabel : UILabel = UILabel()
    let question1Label = UILabel()
    let question2Label = UILabel()
    let answerButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLabel.text = "What is the area and perimeter of a rectangle with length of 5 and width  3 cm?"
        questionLabel.textColor = #colorLiteral(red: 0.0470588244497776, green: 0.0, blue: 0.129411771893501, alpha: 1.0)
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: UIControlState.normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(magic), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 20).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        question1Label.textColor = #colorLiteral(red: 0.0470588244497776, green: 0.0, blue: 0.129411771893501, alpha: 1.0)
        view.addSubview(question1Label)
        question1Label.translatesAutoresizingMaskIntoConstraints = false
        question1Label.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        question1Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        question2Label.textColor = #colorLiteral(red: 0.0470588244497776, green: 0.0, blue: 0.129411771893501, alpha: 1.0)
        view.addSubview(question2Label)
        question2Label.translatesAutoresizingMaskIntoConstraints = false
        question2Label.topAnchor.constraint(equalTo: question1Label.bottomAnchor, constant: 20).isActive = true
        question2Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func magic() {
        question1Label.text = "Area  = \(5 * 3) cm^2"
        question2Label.text = "Perimeter = \(5+5+3+3) cm"
        
    }
    
    }
    
    var prefersStatusBarHidden: Bool {
        return true
    }


// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
