

import UIKit

class CustomCellTableViewCell: UITableViewCell


{
    @IBOutlet weak var photo: UIImageView!

    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
          }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
