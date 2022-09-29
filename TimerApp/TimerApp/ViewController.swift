//
//  ViewController.swift
//  TimerApp
//
//  Created by 김지현 on 2022/09/28.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

	@IBOutlet weak var mainLabel: UILabel!
	@IBOutlet weak var slider: UISlider!
	
	weak var timer: Timer?
	var number = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureUI()
	}

	func configureUI() {
		mainLabel.text = "초를 선택하세요"
		slider.value = 0.5
	}
	
	@IBAction func sliderChanged(_ sender: UISlider) {
		number = Int(slider.value * 60)
		mainLabel.text = "\(number)초"
	}
	
	@IBAction func startButtonTapped(_ sender: UIButton) {
		timer?.invalidate()
		timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] _ in
			if number > 0 {
				number -= 1
				slider.value = Float(number) / Float(60)
				mainLabel.text = "\(number)초"
			} else {
				number = 0
				mainLabel.text = "초를 선택하세요"
				timer?.invalidate()
				AudioServicesPlaySystemSound(SystemSoundID(1322))
			}
		})
	}
	
	@IBAction func resetButtonTapped(_ sender: UIButton) {
		mainLabel.text = "초를 선택하세요"
		slider.value = 0.5
		number = 0
		timer?.invalidate()
	}
}

