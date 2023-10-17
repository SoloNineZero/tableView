import UIKit

final class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        cell.titleLabel.text = "Заголовок"
        cell.subTitleLabel.text = "Подзаголовок"
        cell.descriptionLabel.text = "Инвестиции бывают разными — в ценные бумаги публичных компаний, молодые стартапы, в несколько видов активов и другое. Разбираемся, что это такое, как начать и какие известные инвесторы могут послужить вдохновением"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        210
    }
}
