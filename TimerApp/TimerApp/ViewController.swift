//
//  ViewController.swift
//  TimerApp
//
//  Created by 김지현 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var mainLabel: UILabel!
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		configureUI()
	}

	func configureUI() {
		mainLabel.text = "초를 선택하세요"
	}
	
	

}

