import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let textLabel = UILabel()
    private let imageView = UIImageView()
    private let imageContainerView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        updateNumbers()
        
        setupLabel()
        setupView()
        setupImageContainerView()
        
        view.addSubview(textLabel)
        view.addSubview(imageContainerView)
        
        setupImageView()
        imageContainerView.addSubview(imageView)
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
    
    private func setupLabel() {
        let firstNumber = helper.getNumbers().first
        textLabel.text = firstNumber?.formatted()
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .red
        textLabel.frame = CGRect(x: 30, y: 30, width: 100, height: 50)
    }
    
    private func setupImageView() {
        imageView.image = UIImage(named: "avatar")
        imageView.frame = imageContainerView.bounds
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
    }
    
    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.green.cgColor, UIColor.blue.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    private func setupImageContainerView() {
        imageContainerView.frame = CGRect(x: 30, y: 130, width: 100, height: 200)
        imageContainerView.layer.shadowColor = UIColor.black.cgColor
        imageContainerView.layer.shadowOffset = CGSize(width: 20, height: 20)
        imageContainerView.layer.shadowRadius = 10
        imageContainerView.layer.shadowOpacity = 0.8
        
    }
}

