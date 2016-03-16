
import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   
    @IBOutlet weak var tblView: UITableView!
     var ballName = ["FootBall","FootBall2","TennisBall"]
    var ballFeatures:[String] = ["MultiColor Ball", "BlackAndWhite Ball", "Green Ball"]
    var myimages = [UIImage(named: "a.jpg"), UIImage(named: "b.jpg"), UIImage(named: "c.jpg"), ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomCellTableViewCell
        cell.lblName.text = ballName[indexPath.row]
        cell.lblDescription.text = ballFeatures[indexPath.row]
        cell.photo.image = myimages[indexPath.row]
        cell.photo.clipsToBounds = true
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
       // cell.accessoryView = UIImageView(image: UIImage(named: "a.jpg"))
        
        cell.accessoryView = UIImageView(image: myimages[indexPath.row])
        cell.accessoryView?.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myimages.count
    }

}

