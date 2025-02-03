import UIKit

class MemberInfoViewController: UIViewController {
    
    var memberKey: String?  // e.g., "chara_kana", "chara_ruby", "chara_memcho"

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.backgroundColor = .systemGray6
        return imageView
    }()

    private let actressLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 28)  // Bigger & Bold
        label.numberOfLines = 0
        label.backgroundColor = .systemPink
        return label
    }()

    private let charaLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 22)  // Bold
        label.numberOfLines = 0
        label.backgroundColor = .systemCyan
        return label
    }()

    private let charaInfoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18)  // Normal text
        label.numberOfLines = 0
        label.backgroundColor = .systemMint
        return label
    }()

    private let actressInfoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18)  // Normal text
        label.numberOfLines = 0
        label.backgroundColor = .systemTeal
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let topStack = UIStackView(arrangedSubviews: [imageView, infoStackView()])
        topStack.axis = .horizontal
        topStack.alignment = .center
        topStack.spacing = 20  // Adjusted spacing for better balance
        
        let mainStack = UIStackView(arrangedSubviews: [topStack, charaInfoLabel, actressInfoLabel])
        mainStack.axis = .vertical
        mainStack.spacing = 25
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainStack)
        setupLayout(mainStack)
        loadData()
    }

    private func loadData() {
        if let key = memberKey {
            let charaName = NSLocalizedString("\(key)_name", comment: "")
            let charaInfo = NSLocalizedString("\(key)_info", comment: "")
            let actressName = NSLocalizedString("\(key)_actress", comment: "")
            let actressInfo = NSLocalizedString("\(key)_actress_info", comment: "")

            imageView.image = UIImage(named: key)  // Load image
            actressLabel.text = actressName
            charaLabel.text = charaName
            charaInfoLabel.text = charaInfo
            actressInfoLabel.text = actressInfo
        }
    }

    private func infoStackView() -> UIStackView {
        let infoStack = UIStackView(arrangedSubviews: [actressLabel, charaLabel])
        infoStack.axis = .vertical
        infoStack.alignment = .leading
        infoStack.spacing = 8
        return infoStack
    }

    private func setupLayout(_ mainStack: UIStackView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 200),  // Increased image size
            imageView.heightAnchor.constraint(equalToConstant: 200), // Increased image size
            
            mainStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            mainStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
