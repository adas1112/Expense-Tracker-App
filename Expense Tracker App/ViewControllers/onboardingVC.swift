//
//  onboardingVC.swift
//  Expense Tracker App
//
//  Created by Yash Bhimani on 23/09/26.
//

import UIKit

class onboardingVC: UIViewController {
    
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let viewModel = OnboardingViewModel()
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPage()
        nextButton.layer.borderColor = UIColor(hex: "#EBF6ED").cgColor
        nextButton.layer.borderWidth = 2
        nextButton.layer.cornerRadius = 5
        nextButton.layer.masksToBounds = false
    }
    
    
    @IBAction func nextBtnAction(_ sender: Any) {
        if currentPage < viewModel.pages.count - 1 {
            
            currentPage += 1
            showPage()
            
        } else {
            
            // Open Login/Home
            print("Onboarding completed")
            let vc = storyboard?.instantiateViewController(withIdentifier: "loginVC") as! loginVC
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
    @IBAction func skipBtnClick(_ sender: Any) {
        
    }
    
    func showPage() {
        
        let page = viewModel.pages[currentPage]
        
        imageView.image = UIImage(named: page.image)
        
        lblTitle.text = page.title
        
        lblDescription.text = page.description
        
        pageControl.currentPage = currentPage
        
        if currentPage == viewModel.pages.count - 1 {
            nextButton.setTitle("Get Started", for: .normal)
        } else {
            nextButton.setTitle("Next", for: .normal)
        }
    }
}


