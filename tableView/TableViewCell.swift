import UIKit

final class TableViewCell: UITableViewCell {
    let backView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = #colorLiteral(red: 0.1129439697, green: 0.1129439697, blue: 0.1129439697, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Сигнал купить", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(backView)
        backView.addSubview(titleLabel)
        backView.addSubview(subTitleLabel)
        backView.addSubview(descriptionLabel)
        backView.addSubview(button)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            backView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            backView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            backView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5),
            backView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            titleLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 15),
            titleLabel.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 15),
            titleLabel.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -15),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            subTitleLabel.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 15),
            subTitleLabel.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -15),
            
            descriptionLabel.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 25),
            descriptionLabel.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 15),
            descriptionLabel.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -15),
            
            button.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 15),
            button.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -15),
        ])
        
    }
}
